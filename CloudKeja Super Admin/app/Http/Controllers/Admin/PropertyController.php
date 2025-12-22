<?php

namespace App\Http\Controllers\Admin;

use App\Exports\AdminPropertiesExport;
use App\Models\User;
use App\Models\Amenity;
use App\Models\Category;
use App\Models\Facility;
use App\Models\Property;
use App\Models\HouseType;
use App\Helpers\HasUploader;
use Illuminate\Http\Request;
use App\Models\PropertyDetail;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;

class PropertyController extends Controller
{
    use HasUploader;

    public function __construct()
    {
        $this->middleware('permission:properties-read')->only('index', 'show');
        $this->middleware('permission:properties-create')->only('create', 'store');
        $this->middleware('permission:properties-update')->only('edit', 'update', 'status', 'approve', 'reject');
        $this->middleware('permission:properties-delete')->only('destroy', 'deleteAll');
    }

    public function index()
    {
        $properties = Property::with(['category:id,name', 'landlord:id,name', 'propertyDetail:property_id,property_info'])
                                ->when(request('id'), function ($query)  {
                                    $query->where('id', request('id'));
                                })
                                ->latest()
                                ->paginate(10);
        return view('admin.properties.index', compact('properties'));
    }

    public function acnooFilter(Request $request)
    {
        $properties = Property::with(['category:id,name', 'landlord:id,name', 'propertyDetail:property_id,property_info'])
            ->when(request('search'), function ($q) {
                $q->where('rent_info', 'like', '%' . request('search') . '%')
                    ->orwhere('puid', 'like', '%' . request('search') . '%')
                    ->orWhere('address_info->address', 'like', '%' . request('search') . '%')
                    ->orWhere('address_info->state', 'like', '%' . request('search') . '%')
                    ->orWhere('address_info->city', 'like', '%' . request('search') . '%')
                    ->orWhere('rent_info->monthly_rent', 'like', '%' . request('search') . '%');

                $q->orWhereHas('category', function ($q) {
                    $q->where('name', 'like', '%' . request('search') . '%');
                });

                $q->orWhereHas('propertyDetail', function ($q) {
                    $q->where('property_info', 'like', '%' . request('search') . '%');
                });
            })
            ->latest()
            ->paginate($request->per_page ?? 20);

        if (request()->ajax()) {
            return response()->json([
                'data' => view('admin.properties.datas', compact('properties'))->render()
            ]);
        }
        return redirect(url()->previous());
    }

    public function create()
    {
        $countries = base_path('lang/countrylist.json');
        $countries = json_decode(file_get_contents($countries), true);
        $phone_codes = base_path('lang/phone_code.json');
        $phone_codes = json_decode(file_get_contents($phone_codes), true);
        $categories = Category::all();
        $facilities = Facility::all();
        $amenities  = Amenity::all();
        $house_types  = HouseType::where('status', 1)->latest()->get();
        $landlords = User::where('role', 'landlord')->latest()->get();

        return view('admin.properties.create', compact('categories', 'facilities', 'amenities', 'countries', 'house_types', 'phone_codes', 'landlords'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'category_id' => 'nullable',
            'house_type_id' => 'nullable',
            'agreement_id' => 'nullable',
            'state' => 'nullable',
            'city' => 'nullable',
            'building_name' => 'nullable',
            'utility_deposit' => 'nullable|numeric',
            'security_deposit' => 'nullable|numeric',
            'residential_type' => 'nullable',
            'address' => 'nullable',
            'postcode' => 'nullable|numeric',
            'floor_rang' => 'nullable|string',
            'bedroom' => 'nullable|numeric',
            'bathroom' => 'nullable|numeric',
            'property_size' => 'nullable|numeric',
            'furnishing' => 'nullable',
            'facility' => 'nullable',
            'amenity' => 'nullable',
            'property_title' => 'nullable',
            'property_description' => 'nullable',
            'property_rent' => 'nullable|numeric',
            'full_name' => 'required|string',
            'phone' => 'required|numeric',
            'email' => 'nullable|email',
            'property_type' => 'nullable|string',
            'land_size' => 'nullable|numeric',
            'unit_size' => 'nullable|numeric',
            'unit_number' => 'nullable|string',
            'country' => 'nullable|string',
            'room_size' => 'nullable|string',
            'tenant_preference' => 'nullable',
            'cover_image.*' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'living_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'bedroom_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'kitchen_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'bathroom_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'floorplan_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'term_condition' => 'required',
            'landlord_id' => 'required',
        ]);

        try {
            DB::beginTransaction();

            $property = Property::create($request->except('cover_image', 'status') + [
                'cover_image' => $request->cover_image ? $this->multipleUpload($request, 'cover_image') : null,
                'status' => 1,
            ]);

            PropertyDetail::create($request->except('landlord_id', 'living_image', 'bedroom_image', 'kitchen_image', 'bathroom_image', 'floorplan_image') + [
                'property_id' => $property->id,
                'living_image' => $request->living_image ? $this->upload($request, 'living_image') : null,
                'bedroom_image' => $request->bedroom_image ? $this->upload($request, 'bedroom_image') : null,
                'kitchen_image' => $request->kitchen_image ? $this->upload($request, 'kitchen_image') : null,
                'bathroom_image' => $request->bathroom_image ? $this->upload($request, 'bathroom_image') : null,
                'floorplan_image' => $request->floorplan_image ? $this->upload($request, 'floorplan_image') : null,
            ]);

            DB::commit();

            sendNotification(
                $property->id,
                notify_users([$property->landlord->id]),
                admin_url: route('admin.properties.index', ['id' => $property->id]),
                landlord_url: route('landlord.properties.index', ['id' => $property->id]),
                admin_msg: __('A new property has been created.'),
                landlord_msg: __('Your property has been successfully added.')
            );

            return response()->json([
                'message' => 'Property saved successfully',
                'redirect' => route('admin.properties.success', $property->id),
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'message' => 'Something went wrong',
            ], 500);
        }
    }

    public function show(string $id)
    {
        $property = Property::with(['category:id,name', 'propertyDetail'])->findOrFail($id);
        $amenityIds = $property->propertyDetail->amenities ?? [];
        $amenityNames = Amenity::whereIn('id', $amenityIds)->pluck('name', 'id');
        $facilityIds = $property->propertyDetail->facilities ?? [];
        $facilityNames = Facility::whereIn('id', $facilityIds)->pluck('name', 'id');

        $property->amenities = $amenityNames;
        $property->facilities = $facilityNames;

        return view('admin.properties.view', compact('property'));
    }


    public function edit(string $id)
    {
        $phone_codes = base_path('lang/phone_code.json');
        $phone_codes = json_decode(file_get_contents($phone_codes), true);
        $countries = base_path('lang/countrylist.json');
        $countries = json_decode(file_get_contents($countries), true);
        $categories = Category::all();
        $facilities = Facility::all();
        $amenities  = Amenity::all();
        $house_types  = HouseType::where('status', 1)->latest()->get();
        $property = Property::with(['category:id,name', 'propertyDetail'])->findOrFail($id);
        $landlords = User::where('role', 'landlord')->latest()->get();

        return view('admin.properties.edit', compact('categories', 'facilities', 'amenities', 'house_types', 'phone_codes', 'countries', 'property', 'landlords'));
    }

    public function update(Request $request, Property $property)
    {
        $request->validate([
            'category_id' => 'nullable',
            'house_type_id' => 'nullable',
            'agreement_id' => 'nullable',
            'state' => 'nullable',
            'city' => 'nullable',
            'building_name' => 'nullable',
            'utility_deposit' => 'nullable|numeric',
            'security_deposit' => 'nullable|numeric',
            'residential_type' => 'nullable',
            'address' => 'nullable',
            'postcode' => 'nullable|numeric',
            'floor_rang' => 'nullable|string',
            'bedroom' => 'nullable|numeric',
            'bathroom' => 'nullable|numeric',
            'property_size' => 'nullable|numeric',
            'furnishing' => 'nullable',
            'facility' => 'nullable',
            'amenity' => 'nullable',
            'property_title' => 'nullable',
            'property_description' => 'nullable',
            'property_rent' => 'nullable|numeric',
            'full_name' => 'required|string',
            'phone' => 'required|numeric',
            'email' => 'nullable|email',
            'property_type' => 'nullable|string',
            'land_size' => 'nullable|numeric',
            'unit_size' => 'nullable|numeric',
            'unit_number' => 'nullable|string',
            'country' => 'nullable|string',
            'room_size' => 'nullable|string',
            'tenant_preference' => 'nullable',
            'cover_image.*' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'living_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'bedroom_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'kitchen_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'bathroom_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'floorplan_image' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'term_condition' => 'required',
            'landlord_id' => 'required',
        ]);

        try {
            DB::beginTransaction();

            $property->update([
                'landlord_id' => $request->landlord_id,
                'category_id' => $request->category_id,
                'house_type_id' => $request->house_type_id,
                'building_name' => $request->building_name,
                'utility_deposit' => $request->utility_deposit !== null ? (float) $request->utility_deposit : 0,
                'security_deposit' => $request->security_deposit !== null ? (float) $request->security_deposit : 0,
                'cover_image' => $request->hasFile('cover_image') ? array_merge($property->cover_image ?? [], $this->multipleUpload($request, 'cover_image')) : $property->cover_image,
                'room_info' =>  $request->room_info,
                'rent_info' => $request->rent_info,
                'address_info' => $request->address_info,
            ]);

            $property->propertyDetail()->update([
                'property_id' => $property->id,
                'furnishing' => $request->furnishing,
                'facilities' => $request->facilities,
                'parking_lot' => $request->parking_lot,
                'amenities' => $request->amenities,
                'full_name' => $request->full_name,
                'phone' => $request->phone,
                'email' => $request->email,
                'living_image' => $request->hasFile('living_image') ? $this->upload($request, 'living_image', $property->propertyDetail->living_image) : $property->propertyDetail->living_image,
                'bedroom_image' => $request->hasFile('bedroom_image') ? $this->upload($request, 'bedroom_image', $property->propertyDetail->bedroom_image) : $property->propertyDetail->bedroom_image,
                'kitchen_image' => $request->hasFile('kitchen_image') ? $this->upload($request, 'kitchen_image', $property->propertyDetail->kitchen_image) : $property->propertyDetail->kitchen_image,
                'bathroom_image' => $request->hasFile('bathroom_image') ? $this->upload($request, 'bathroom_image', $property->propertyDetail->bathroom_image) : $property->propertyDetail->bathroom_image,
                'floorplan_image' => $request->hasFile('floorplan_image') ? $this->upload($request, 'floorplan_image', $property->propertyDetail->floorplan_image) : $property->propertyDetail->floorplan_image,
                'residential_type' => $request->residential_type,
                'residential_type' => $request->residential_type,
                'property_type' => $request->property_type,
                'property_info' => $request->property_info,
                'tenant_preference' => $request->tenant_preference,
            ]);

            DB::commit();

            return response()->json([
                'message' => 'Property updated successfully',
                'redirect' => route('admin.properties.index'),
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'message' => 'Something went wrong',
            ], 500);
        }
    }

    public function propertySuccess(string $id)
    {
        $property = Property::with(['landlord', 'propertyDetail'])->findOrFail($id);
        return view('admin.properties.property-success', compact('property'));
    }

    public function getPropertyPreview(string $id)
    {
        $property = Property::with('propertyDetail')->findOrFail($id);
        return view('admin.properties.preview', compact('property'));
    }

    public function status(Request $request, string $id)
    {

        $property = Property::findOrFail($id);
        $property->update([
            'status' => $request->status
        ]);

        return response()->json([
            'message' => 'Status Updated',
            'redirect' => route('admin.properties.index')
        ]);
    }

    public function destroy(string $id)
    {
        $property = Property::findOrFail($id);

        if (!empty($property->cover_image)) {
            foreach ($property->cover_image as $image) {
                $oldImagePath = dirname($image);
                Storage::deleteDirectory($oldImagePath);
            }
        }
        if (!empty($property->propertyDetail->living_image)) {
            $oldImagePath = dirname($property->propertyDetail->living_image);
            Storage::deleteDirectory($oldImagePath);
        }
        if (!empty($property->propertyDetail->bedroom_image)) {
            $oldImagePath = dirname($property->propertyDetail->bedroom_image);
            Storage::deleteDirectory($oldImagePath);
        }
        if (!empty($property->propertyDetail->kitchen_image)) {
            $oldImagePath = dirname($property->propertyDetail->kitchen_image);
            Storage::deleteDirectory($oldImagePath);
        }
        if (!empty($property->propertyDetail->bathroom_image)) {
            $oldImagePath = dirname($property->propertyDetail->bathroom_image);
            Storage::deleteDirectory($oldImagePath);
        }
        if (!empty($property->propertyDetail->floorplan_image)) {
            $oldImagePath = dirname($property->propertyDetail->floorplan_image);
            Storage::deleteDirectory($oldImagePath);
        }

        $property->delete();

        return response()->json([
            'message'   => __('Property deleted successfully'),
            'redirect'  => route('admin.properties.index')
        ]);
    }

    public function deleteAll(Request $request)
    {
        $properties = Property::whereIn('id', $request->ids)->get();

        foreach ($properties as $property) {
            if (!empty($property->cover_image)) {
                foreach ($property->cover_image as $image) {
                    $oldImagePath = dirname($image);
                    Storage::deleteDirectory($oldImagePath);
                }
            }
            if (!empty($property->propertyDetail->living_image)) {
                $oldImagePath = dirname($property->propertyDetail->living_image);
                Storage::deleteDirectory($oldImagePath);
            }
            if (!empty($property->propertyDetail->bedroom_image)) {
                $oldImagePath = dirname($property->propertyDetail->bedroom_image);
                Storage::deleteDirectory($oldImagePath);
            }
            if (!empty($property->propertyDetail->kitchen_image)) {
                $oldImagePath = dirname($property->propertyDetail->kitchen_image);
                Storage::deleteDirectory($oldImagePath);
            }
            if (!empty($property->propertyDetail->bathroom_image)) {
                $oldImagePath = dirname($property->propertyDetail->bathroom_image);
                Storage::deleteDirectory($oldImagePath);
            }
            if (!empty($property->propertyDetail->floorplan_image)) {
                $oldImagePath = dirname($property->propertyDetail->floorplan_image);
                Storage::deleteDirectory($oldImagePath);
            }

            $property->delete();
        }
        return response()->json([
            'message'   => __('Selected property deleted successfully'),
            'redirect'  => route('admin.properties.index')
        ]);
    }

    public function reject(Request $request, string $id)
    {
        $request->validate([
            'meta.reason' => 'required|string|max:255',
        ]);

        $property = Property::findOrFail($id);

        if ($property) {

            $meta = $property->meta ?? [];

            $meta['reason'] = $request->input('meta.reason');

            $property->update([
                'status' => '3',
                'meta' => $meta,
            ]);

            return response()->json([
                'message' => 'Property rejected successfully',
                'redirect' => route('admin.properties.show', $property->id)
            ]);
        } else {
            return response()->json(['message' => 'Property rejected Not Found'], 404);
        }
    }

    public function approve(string $id)
    {
        $property = Property::findOrFail($id);

        if ($property) {

            $property->update([
                'status' => '1',
            ]);

            return response()->json([
                'message' => 'Property Approved successfully',
                'redirect' => route('admin.properties.show', $property->id)
            ]);
        } else {
            return response()->json(['message' => 'Property Not Found'], 404);
        }
    }

    public function exportExcel()
    {
        return Excel::download(new AdminPropertiesExport, 'properties.xlsx');
    }

    public function exportCsv()
    {
        return Excel::download(new AdminPropertiesExport, 'properties.csv');
    }
}
