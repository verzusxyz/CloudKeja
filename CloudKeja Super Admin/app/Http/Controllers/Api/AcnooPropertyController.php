<?php

namespace App\Http\Controllers\Api;

use Carbon\Carbon;
use App\Models\Rent;
use App\Models\Review;
use App\Models\Property;
use App\Helpers\HasUploader;
use Illuminate\Http\Request;
use App\Models\PropertyDetail;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class AcnooPropertyController extends Controller
{
    use HasUploader;

    public function index(Request $request)
    {
        $query = Property::select('id', 'landlord_id', 'category_id', 'status', 'room_info', 'rent_info', 'address_info', 'cover_image')
            ->with(['propertyDetail:property_id,property_info', 'landlord:id,name', 'category:id,name', 'favorite:id,property_id,status'])
            ->when(auth()->user()->role == 'landlord' || request('landlord_id'), function ($q) {
                $q->where('landlord_id', request('landlord_id') ?? auth()->id());
            })
            ->when(auth()->user()->role == 'tenant' && request('show_recommendate') == true, function ($q) {
                $q->whereJsonContains('address_info->state', auth()->user()->user_details->address_info['state']);
            })
            ->when(auth()->user()->role == 'tenant', function ($q) {
                $q->where('status', 1);
            })

            ->when($request->has('status'), function ($q) {
                $q->where('status', request('status'));
            })
            ->when(request('category_id'), function ($q) {
                $q->where('category_id', request('category_id'));
            })
            ->when(request('country'), function ($q) {
                $q->whereJsonContains('address_info->country', request('country'));
            })
            ->when($request->available_rent == true, function ($q) {
                $q->whereDoesntHave('rent');
            })
            ->when($request->has('search') && $request->search !== null, function ($query) {
                $query->where(function ($q) {
                    $q->where('room_info', 'like', '%' . request('search') . '%')
                        ->orWhere('building_name', 'like', '%' . request('search') . '%')
                        ->orWhere('address_info', 'like', '%' . request('search') . '%')
                        ->orwhereHas('propertyDetail', function ($propertyDetail) {
                            $propertyDetail->where('property_info', 'like', '%' . request('search') . '%');
                        })
                        ->orwhereHas('category', function ($category) {
                            $category->where('name', 'like', '%' . request('search') . '%');
                        })
                        ->orwhereHas('landlord', function ($category) {
                            $category->where('name', 'like', '%' . request('search') . '%');
                        });
                });
            })
            ->when(request('sorting') ?? false, function ($q) {
                $sort = request('sorting');
                if ($sort === 'low_to_high') {
                    $q->orderBy('rent_info->monthly_rent', 'asc');
                } elseif ($sort === 'high_to_low') {
                    $q->orderBy('rent_info->monthly_rent', 'desc');
                }
            }, function ($q) {
                $q->orderBy('created_at', 'desc');
            })
            ->latest();
        if ($request->has('no_paginate') && $request->no_paginate == true) {
            $properties = Property::select('id')->with('propertyDetail:property_id,property_info')->get();
            $responseData = [
                'data' => $properties,
            ];
        } else {
            $properties = $query->paginate($request->per_page ?? 10);
            $responseData = $properties;
        }

        return response()->json([
            'message' => 'Property data fetched successfully',
            'data' => $responseData
        ]);
    }

    public function store(Request $request)
    {
        $plan = plan_data()->plan;
        $property_count = Property::where('landlord_id', auth()->id())->count();

        if ($plan->number_of_property !== -1 && $property_count >= $plan->number_of_property) {
            return response()->json(['message' => __('Your property addition limit has been reached. Your current limit is ' . $plan->number_of_property)], 406);
        }

        $request->validate([
            'category_id' => 'nullable',
            'house_type_id' => 'nullable',
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
            'cover_image.*' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'living_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'bedroom_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'kitchen_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'bathroom_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'floorplan_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        try {
            DB::beginTransaction();
            $property = Property::create([
                'landlord_id' => auth()->id(),
                'category_id' => $request->category_id,
                'house_type_id' => $request->house_type_id,
                'building_name' => $request->building_name,
                'utility_deposit' => $request->utility_deposit,
                'security_deposit' => $request->security_deposit,
                'cover_image' => $request->cover_image ? $this->multipleUpload($request, 'cover_image') : null,
                'room_info' =>  $request->room_info,
                'rent_info' => $request->rent_info,
                'address_info' => $request->address_info,
            ]);

            PropertyDetail::create([
                'property_id' => $property->id,
                'furnishing' => $request->furnishing,
                'facilities' => $request->facilities,
                'parking_lot' => $request->parking_lot,
                'amenities' => $request->amenities,
                'full_name' => $request->full_name,
                'phone' => $request->phone,
                'email' => $request->email,
                'living_image' => $request->living_image ? $this->upload($request, 'living_image') : null,
                'bedroom_image' => $request->bedroom_image ? $this->upload($request, 'bedroom_image') : null,
                'kitchen_image' => $request->kitchen_image ? $this->upload($request, 'kitchen_image') : null,
                'bathroom_image' => $request->bathroom_image ? $this->upload($request, 'bathroom_image') : null,
                'floorplan_image' => $request->floorplan_image ? $this->upload($request, 'floorplan_image') : null,
                'residential_type' => $request->residential_type,
                'property_type' => $request->property_type,
                'property_info' => $request->property_info,
                'tenant_preference' => $request->tenant_preference,
            ]);

            DB::commit();

            sendNotification($property->id, notify_users([$property->landlord_id]), landlord_url: route('landlord.properties.index', ['id' => $property->id]),  admin_msg: __('New property added'), landlord_msg: __('New property has been created'));

            return response()->json([
                'message' => 'Property saved successfully',
                'data' => $property->load('propertyDetail:property_id,property_info', 'landlord:id,name', 'category:id,name')

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
        $property = Property::with(['propertyDetail', 'house_type:id,name', 'category:id,name', 'landlord:id,name', 'favorite:id,property_id,status', 'rent' => function ($query) {
            $query->select('property_id', 'status')
                ->whereDate('start_date', '<=', Carbon::today())
                ->whereDate('end_date', '>=', Carbon::today());
        }])->findOrFail($id);
        $reviews = Review::with('tenant:id,name,image')->where('property_id',  $property->id)->latest()->get();

        $can_review = Rent::where('tenant_id', auth()->user()->id)
            ->where('property_id', $property->id)
            ->exists();

        $total = $property->reviews()->count();
        $average = $property->reviews()->avg('review');

        return response()->json([
            'message' => 'Property data fetched successfully',
            'data' => [
                'property' => $property,
                'reviews' => $reviews,
                'can_review' => $can_review,
                'ratings' => [
                    'total' => $total,
                    'average' => $average,
                ],
            ]
        ]);
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'category_id' => 'nullable',
            'house_type_id' => 'nullable',
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
            'facilities' => 'nullable',
            'amenities' => 'nullable',
            'property_title' => 'nullable',
            'property_description' => 'nullable',
            'property_rent' => 'nullable|numeric',
            'full_name' => 'required|string',
            'phone' => 'required|numeric',
            'email' => 'nullable|email',
            'house_type' => 'nullable|string',
            'property_type' => 'nullable|string',
            'land_size' => 'nullable|numeric',
            'unit_size' => 'nullable|numeric',
            'unit_number' => 'nullable|string',
            'country' => 'nullable|string',
            'room_size' => 'nullable|string',
            'tenant_preference' => 'nullable',
            'cover_image.*' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'living_image' => 'nullable|image|mimes:jpeg,png,jpg||max:2048',
            'bedroom_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'kitchen_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'bathroom_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'floorplan_image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        try {
            DB::beginTransaction();

            $property = Property::findOrFail($id);

            if ($request->removed_images) {
                $prev_images = array_diff($property->cover_image ?? [], $request->removed_images);
                foreach ($request->removed_images as $image) {
                    if (Storage::exists($image)) {
                        Storage::delete($image);
                    }
                }

                $prev_images = array_values($prev_images);
            } else {
                $prev_images = $property->cover_image ?? [];
            }

            $new_images = $request->cover_image ? $this->multipleUpload($request, 'cover_image') : [];

            $merged_images = array_merge($prev_images, $new_images);


            if ($request->hasFile('living_image')) {
                if ($property->propertyDetail->living_image) {
                    Storage::deleteDirectory(dirname($property->propertyDetail->living_image));
                }
                $living_image = $this->upload($request, 'living_image');
            } else {
                $living_image = $property->propertyDetail->living_image;
            }

            if ($request->hasFile('bedroom_image')) {
                if ($property->propertyDetail->bedroom_image) {
                    Storage::deleteDirectory(dirname($property->propertyDetail->bedroom_image));
                }
                $bedroom_image = $this->upload($request, 'bedroom_image');
            } else {
                $bedroom_image = $property->propertyDetail->bedroom_image;
            }

            if ($request->hasFile('kitchen_image')) {
                if ($property->propertyDetail->kitchen_image) {
                    Storage::deleteDirectory(dirname($property->propertyDetail->kitchen_image));
                }
                $kitchen_image = $this->upload($request, 'kitchen_image');
            } else {
                $kitchen_image = $property->propertyDetail->kitchen_image;
            }

            if ($request->hasFile('bathroom_image')) {
                if ($property->propertyDetail->bathroom_image) {
                    Storage::deleteDirectory(dirname($property->propertyDetail->bathroom_image));
                }
                $bathroom_image = $this->upload($request, 'bathroom_image');
            } else {
                $bathroom_image = $property->propertyDetail->bathroom_image;
            }

            if ($request->hasFile('floorplan_image')) {
                if ($property->propertyDetail->floorplan_image) {
                    Storage::deleteDirectory(dirname($property->propertyDetail->floorplan_image));
                }
                $floorplan_image = $this->upload($request, 'floorplan_image');
            } else {
                $floorplan_image = $property->propertyDetail->floorplan_image;
            }

            $property->update([
                'landlord_id' => auth()->id(),
                'category_id' => $request->category_id,
                'house_type_id' => $request->house_type_id,
                'building_name' => $request->building_name,
                'utility_deposit' => $request->utility_deposit,
                'security_deposit' => $request->security_deposit,
                'cover_image' => $merged_images,
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
                'living_image' => $living_image,
                'bedroom_image' => $bedroom_image,
                'kitchen_image' => $kitchen_image,
                'bathroom_image' => $bathroom_image,
                'floorplan_image' => $floorplan_image,
                'residential_type' => $request->residential_type,
                'property_type' => $request->property_type,
                'property_info' => $request->property_info,
                'tenant_preference' => $request->tenant_preference,
            ]);

            DB::commit();

            return response()->json([
                'message' => 'Property updated successfully',
                'data' => $property->load('propertyDetail:property_id,property_info', 'landlord:id,name', 'category:id,name')
            ]);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'message' => 'Error updating property: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function update_status(Request $request)
    {
        $property = Property::findOrFail($request->property_id);

        if ($request->is_published == true) {
            $property->update(['status' => 1]);
        } else {
            $property->update(['status' => 2]);
        }

        return response()->json([
            'message' => 'Property status updated successfully',
            'data' => $property
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
            'message' => __("Property deleted successfully"),
        ]);
    }
}
