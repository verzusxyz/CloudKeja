<?php

namespace App\Http\Controllers\Landlord;

use App\Exports\LandlordRentInvitationExport;
use App\Models\Rent;
use App\Models\User;
use App\Models\Option;
use App\Models\Amenity;
use App\Models\Facility;
use App\Models\Property;
use App\Helpers\HasUploader;
use Illuminate\Http\Request;
use App\Models\SecurityDeposit;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;

class AcnooRentInvitationController extends Controller
{
    use HasUploader;

    public function index(Request $request)
    {
        $tenants = User::with('user_details')->where('landlord_id', auth()->id())->latest()->get();
        $properties = Property::where('landlord_id', auth()->id())
            ->whereDoesntHave('rent')
            ->latest()
            ->get();
        $rents = Rent::select('id', 'monthly_rent', 'status', 'tenant_id', 'property_id')
            ->with([
                'tenant:id,name,unique_id',
                'property:id',
                'property.propertyDetail:property_id,property_info,property_type',
                'security_deposit:id,rent_id,deposit_amount'
            ])
            ->where('landlord_id', auth()->id())
            ->latest()
            ->paginate(10);

        return view('landlord.rents.index', compact('rents', 'tenants', 'properties'));
    }

    public function acnooFilter(Request $request)
    {
        $rents = Rent::select('id', 'monthly_rent', 'utility_bill', 'total_amount', 'start_date', 'end_date', 'status', 'landlord_id', 'tenant_id', 'property_id')
            ->with([
                'tenant:id,name,unique_id',
                'landlord:id,name',
                'property:id,address_info,rent_info',
                'property.propertyDetail:property_id,property_info,property_type',
                'security_deposit'
            ])
            ->where('landlord_id', auth()->id())
            ->when($request->input('search'), function ($query, $search) {
                $query->where(function ($query) use ($search) {

                    $query->whereHas('tenant', function ($query) use ($search) {
                        $query->where('unique_id', 'like', '%' . $search . '%')
                            ->orWhere('name', 'like', '%' . $search . '%');
                    })

                        ->orWhereHas('property.propertyDetail', function ($query) use ($search) {
                            $query->where('property_type', 'like', '%' . $search . '%')
                                ->orWhere('property_info->property_title', 'like', '%' . $search . '%');
                        })

                        ->orWhereHas('security_deposit', function ($query) use ($search) {
                            $query->where('deposit_amount', 'like', '%' . $search . '%');
                        })

                        ->orWhere('monthly_rent', 'like', '%' . $search . '%');
                });
            })
            ->latest()
            ->paginate($request->input('per_page', 20));

        if ($request->ajax()) {
            return response()->json([
                'data' => view('landlord.rents.datas', compact('rents'))->render()
            ]);
        }

        return redirect()->back();
    }

    public function store(Request $request)
    {
        $request->validate([
            'tenant_id' => 'required|exists:users,id',
            'property_id' => 'required|exists:properties,id',
            'start_date' => 'required|date',
            'end_date' => 'required|date',
            'landlord_agreement' => 'required|file',
        ]);

        $property = Property::findOrFail($request->property_id);
        $chargeOption = Option::where('key', 'service-charge')->first();
        $chargeData = $chargeOption->value;

        $amount = $chargeData['amount'] ?? 0;
        $type = $chargeData['type'] ?? 'fixed';

        $total_amount = ($property->security_deposit ?? 0) + ($property->rent_info['monthly_rent'] ?? 0) + ($property->utility_deposit ?? 0);

        if ($type === 'percentage') {
            $calculated_charge = ($total_amount * $amount) / 100;
        } else {
            $calculated_charge = $amount;
        }

        $final_total_amount = $total_amount + $calculated_charge;

        $landlord_balance = $total_amount;

        DB::beginTransaction();
        try {
            $rent = Rent::create($request->except('landlord_agreement') + [
                'landlord_id' => auth()->id(),
                'utility_bill' => $property->utility_deposit ?? 0,
                'monthly_rent' => $property->rent_info['monthly_rent'] ?? 0,
                'total_amount' => ($property->utility_deposit ?? 0) + ($property->rent_info['monthly_rent'] ?? 0),
                'landlord_agreement' => $request->landlord_agreement ? $this->upload($request, 'landlord_agreement') : NULL,
            ]);

            SecurityDeposit::create([
                'tenant_id' => $request->tenant_id,
                'landlord_id' => auth()->id(),
                'rent_id' => $rent->id,
                'property_id' => $request->property_id,
                'deposit_amount' => $property->security_deposit ?? 0,
                'rent_advance' => $property->rent_info['monthly_rent'] ?? 0,
                'utility_advance' => $property->utility_deposit ?? 0,
                'total_amount' => $final_total_amount,
                'landlord_balance' => $landlord_balance,
                'charge' => $calculated_charge,
                'status' => 'unpaid',
            ]);

            DB::commit();

            return response()->json([
                'message' => 'Rent Invitation save successfully',
                'redirect' => route('landlord.rents.index')
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['message' => 'Something went wrong'], 500);
        }
    }

    public function show(string $id)
    {
        $rent = Rent::with([
            'tenant:id,unique_id,name,phone,email',
            'property.propertyDetail',
            'security_deposit:id,rent_id,status'
        ])
            ->findOrFail($id);

        $amenityIds = $rent->property->propertyDetail->amenities ?? [];
        $amenityNames = Amenity::whereIn('id', $amenityIds)->pluck('name', 'id');
        $facilityIds = $rent->property->propertyDetail->facilities ?? [];
        $facilityNames = Facility::whereIn('id', $facilityIds)->pluck('name', 'id');

        $rent->amenities = $amenityNames;
        $rent->facilities = $facilityNames;

        return view('landlord.rents.view', compact('rent'));
    }

    public function approved(string $id)
    {
        try {
            $rent_approved = Rent::findOrFail($id);

            $security_deposit = SecurityDeposit::where('rent_id', $rent_approved->id)->first();

            if (!$security_deposit) {
                return response()->json(['message' => 'Security Deposit not found.'], 404);
            }

            if ($security_deposit->status == 'paid') {
                $rent_approved->update([
                    'status' => 'active',
                ]);

                return response()->json([
                    'message' => 'Rent approved successfully',
                    'redirect' => route('landlord.rents.index')
                ]);
            } else {
                return response()->json(['message' => 'Security Deposit is unpaid.'], 400);
            }
        } catch (\Exception $e) {
            return response()->json(['message' => 'An unexpected error occurred.', 'error' => $e->getMessage()], 500);
        }
    }

    public function canceled(Request $request, string $id)
    {
        $request->validate([
            'title' => 'nullable|string',
            'reason' => 'nullable|string',
        ]);

        $rent = Rent::findOrFail($id);

        if ($rent->status == 'active') {

            $rent->update([
                'cancel_info' => [
                    'title' => $request->title,
                    'reason' => $request->reason,
                    'prev_end_date' => $rent->end_date,
                ],
                'status' => 'cancelled',
            ]);

            sendNotification($rent->id, notify_users([$rent->tenant->id, $rent->landlord->id]), landlord_url: route('landlord.rents.index', ['id' => $rent->id]),   landlord_msg: __('The tenant has cancelled the rent agreement.'), tenant_msg: __('You have successfully cancelled your rent agreement.'));

            return response()->json([
                'message' => 'Rent cancelled successfully',
                'redirect' => route('landlord.rents.index')
            ]);
        } else {
            return response()->json(['message' => 'Rent not found'], 404);
        }
    }

    public function exportExcel()
    {
        return Excel::download(new LandlordRentInvitationExport, 'landlord-rent-invitation.xlsx');
    }

    public function exportCsv()
    {
        return Excel::download(new LandlordRentInvitationExport, 'landlord-rent-invitation.csv');
    }
}
