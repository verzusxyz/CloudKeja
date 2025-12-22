<?php

namespace App\Http\Controllers\Landlord;

use App\Exports\LandlordPropertiesExport;
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
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;

class PropertyController extends Controller
{
    use HasUploader;

    public function index()
    {
        $properties = Property::with(['category:id,name', 'propertyDetail:id,property_id,property_info'])
                                ->where('landlord_id', auth()->id())
                                ->when(request('id'), function ($query)  {
                                    $query->where('id', request('id'));
                                })
                                ->latest()
                                ->paginate(10);
        return view('landlord.properties.index', compact('properties'));
    }

    public function acnooFilter(Request $request)
    {
        $properties = Property::with(['category:id,name', 'propertyDetail:id,property_id,property_info'])
            ->when(request('search'), function ($q) {
                $q->where(function ($q) {
                    $search = request('search');
                    $q->where('building_name', 'like', '%' . $search . '%')
                        ->orWhere('address_info->address', 'like', '%' . $search . '%')
                        ->orWhere('puid', 'like', '%' . $search . '%')
                        ->orWhere('rent_info->monthly_rent', 'like', '%' . $search . '%')
                        ->orWhereHas('category', function ($query) use ($search) {
                            $query->where('name', 'like', '%' . $search . '%');
                        })
                        ->orWhereHas('propertyDetail', function ($query) use ($search) {
                            $query->where('property_info->property_title', 'like', '%' . $search . '%');
                        });
                });
            })
            ->latest()
            ->paginate($request->per_page ?? 20);

        if ($request->ajax()) {
            return response()->json([
                'data' => view('landlord.properties.datas', compact('properties'))->render()
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

        return view('landlord.properties.create', compact('categories', 'facilities', 'amenities', 'countries', 'house_types', 'phone_codes'));
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
        ]);

        try {
            DB::beginTransaction();

            $property = Property::create($request->except('landlord_id', 'cover_image') + [
                'landlord_id' => auth()->id(),
                'cover_image' => $request->cover_image ? $this->multipleUpload($request, 'cover_image') : null,
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

            return response()->json([
                'message' => 'Property saved successfully',
                'redirect' => route('landlord.properties.success', $property->id),
            ]);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'message' => 'Error saving property: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function show(string $id)
    {
        $property = Property::with(['category:id,name', 'propertyDetail'])->where('landlord_id', auth()->id())->findOrFail($id);
        $amenityIds = $property->propertyDetail->amenities ?? [];
        $amenityNames = Amenity::whereIn('id', $amenityIds)->pluck('name', 'id');
        $facilityIds = $property->propertyDetail->facilities ?? [];
        $facilityNames = Facility::whereIn('id', $facilityIds)->pluck('name', 'id');

        $property->amenities = $amenityNames;
        $property->facilities = $facilityNames;

        return view('landlord.properties.view', compact('property'));
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

        return view('landlord.properties.edit', compact('categories', 'facilities', 'amenities', 'house_types', 'phone_codes', 'countries', 'property'));
    }

    public function update(Request $request, string $id)
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
        ]);

        try {
            DB::beginTransaction();

            $property = Property::findOrFail($id);

            $property->update([
                'landlord_id' => auth()->id(),
                'category_id' => $request->category_id,
                'house_type_id' => $request->house_type_id,
                'building_name' => $request->building_name,
                'utility_deposit' => $request->utility_deposit,
                'security_deposit' => $request->security_deposit,
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
                'property_type' => $request->property_type,
                'property_info' => $request->property_info,
                'tenant_preference' => $request->tenant_preference,
            ]);

            DB::commit();

            return response()->json([
                'message' => 'Property updated successfully',
                'redirect' => route('landlord.properties.success', $property->id),
            ]);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'message' => 'Error updating property: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function successView(string $id)
    {
        $property = Property::with(['landlord', 'propertyDetail'])->findOrFail($id);
        return view('landlord.properties.property-success', compact('property'));
    }

    public function getPropertyPreview(string $id)
    {
        $property = Property::with('propertyDetail')->findOrFail($id);
        return view('landlord.properties.preview', compact('property'));
    }

    public function status(Request $request, $id)
    {
        $property = Property::findOrFail($id);
        $property->update(['status' => $request->status]);
        return response()->json(['message' => 'Property']);
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

        if ($property->rent !== null) {

            return response()->json([
                'message' => __('Your property is already rented by tenant. Cannot delete it until remove the tenant first')
            ], 400);
        }

        $property->delete();

        return response()->json([
            'message' => __('Property deleted successfully'),
            'redirect' => route('landlord.properties.index')
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
            if ($property->rent !== null) {

                return response()->json([
                    'message' => __('Your property is already rented by tenant. Cannot delete it until remove the tenant first')
                ], 400);
            }

            $property->delete();
        }
        return response()->json([
            'message' => __('Selected property deleted successfully'),
            'redirect' => route('landlord.properties.index')
        ]);
    }

    public function exportExcel()
    {
        return Excel::download(new LandlordPropertiesExport, 'landlord-properties.xlsx');
    }

    public function exportCsv()
    {
        return Excel::download(new LandlordPropertiesExport, 'landlord-properties.csv');
    }
}
