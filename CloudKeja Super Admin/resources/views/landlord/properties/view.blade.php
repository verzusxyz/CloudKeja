@extends('layouts.landlord.master')

@section('title')
    {{__('View Property')}}
@endsection

@section('main_content')
    <div class="woodland-section-container">
        <div class="woodland-card">
            <div class="row">
                <div class="woodland-card-header">
                    <h3>{{ __('Property View') }}</h3>
                    <a href="{{ route('landlord.properties.index') }}" class="text-black"><i class="far fa-times"></i></a>
                </div>
                <div class="col-lg-6">
                    <div class="">
                        <div class="mt-2">
                            <div class="mt-2">
                                <h4 class="preview-title">
                                    {{ $property->propertyDetail->property_info['property_title'] ?? '' }}
                                </h4>
                                <p class="mt-2">{{ $property->category->name ?? '' }}</p>

                                @if ($property->status == '0')
                                    <p class="mt-2"> {{__('Status')}} : <span class="pending_status"> {{__('Pending')}} </span></p>
                                @elseif($property->status == '1')
                                    <p class="mt-2"> {{__('Status')}} : <span class="approve_status"> {{__('Active')}} </span></p>
                                @elseif($property->status == '2')
                                    <p class="mt-2"> {{__('Status')}} : <span class="procesing_status"> {{__('Inactive')}} </span></p>
                                @else
                                    <p class="mt-2"> {{__('Status')}} : <span class="reject_status"> {{__('Rejected')}} </span></p>
                                @endif

                                <div class="d-flex align-items-center gap-2 mt-2">
                                    <img class="location-icon" src={{ asset('backend/assets/img/location.svg') }}
                                        alt="" srcset="">
                                    <p>{{ $property->address_info['address'] ?? '' }},
                                        {{ $property->address_info['state'] ?? '' }},{{ $property->address_info['city'] ?? '' }}
                                    </p>
                                </div>
                                <h5 class="preview-price mt-3">
                                    {{ currency_format($property->rent_info['monthly_rent'] ?? 0) }}
                                    / <span> {{__('Month')}} </span></h5>
                                <hr class="preview-hr">
                                <h5 class="preview-des"> {{__('Description')}} </h5>
                                <p class="preview-pera">
                                    {{ $property->propertyDetail->property_info['property_description'] ?? '' }}</p>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td colspan="2" class="border-0 p-0 pt-3 mb-2">
                                                <div class="table-header-title mt-2 mb-2">
                                                    <h4 class=""> {{__('Building Details')}} </h4>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Building Name')}} </td>
                                            <td class="border-0 wrap-table-data">: {{ $property->building_name }}</td>

                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Property Address')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->address_info['address'] ?? '' }},
                                                {{ $property->address_info['state'] ?? '' }},{{ $property->address_info['city'] ?? '' }}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Completion Year')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->rent_info['completion_year'] ?? '' }}</td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Lot Number')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->propertyDetail->property_info['lot_number'] ?? '' }}</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="border-0 p-0 pt-3 mb-2">
                                                <div class="table-header-title mt-2 mb-2">
                                                    <h4> {{__('Property Types')}} </h4>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Residential Type')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->propertyDetail->residential_type ?? '' }}
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Furnishing')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->propertyDetail->furnishing ?? '' }}</td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Floor Range')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->room_info['floor_rang'] ?? '' }}</td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Bedroom')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->room_info['bedroom'] ?? '' }}  {{__('beds')}} </td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Bathroom')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->room_info['bathroom'] ?? '' }}  {{__('baths')}} </td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Property Size')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ $property->propertyDetail->property_info['property_size'] ?? '' }}
                                                {{__('sq.ft.')}}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Security Deposit')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ currency_format($property->security_deposit ?? 0) }}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="border-0 details-name"> {{__('Utility Deposit')}} </td>
                                            <td class="border-0 wrap-table-data">:
                                                {{ currency_format($property->utility_deposit ?? 0) }}
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="">
                        <swiper-container class="mySwiper " thumbs-swiper=".mySwiper2" space-between="10"
                            navigation="false">
                            @foreach ($property->cover_image ?? [] as $key => $image)
                                <swiper-slide>
                                    <img src="{{ asset($image ?: 'backend/assets/img/property-img/add-photo/camera.png') }}"
                                        alt="">
                                </swiper-slide>
                            @endforeach
                        </swiper-container>

                        <swiper-container class="mySwiper2 slider-img" space-between="10" slides-per-view="5"
                            free-mode="true" watch-slides-progress="true">
                            @foreach ($property->cover_image ?? [] as $image)
                                <swiper-slide>
                                    <img src="{{ asset($image ?: 'backend/assets/img/property-img/add-photo/camera.png') }}"
                                        alt="">
                                </swiper-slide>
                            @endforeach
                        </swiper-container>
                    </div>
                    <div class="info-container mt-3">
                        <div class="table-header-title ">
                            <h4>{{ __('Features') }} <span>{{ __('Facilities & Amenities') }}</span></h4>
                        </div>
                        <div class="p-2">
                            <p class="check-title mt-3">{{ __('Facilities') }}</p>
                            <div class="facilities-container">

                                @foreach ($property->facilities as $facility)
                                    <div class="d-flex align-items-center gap-2">
                                        <img class="circle-check" src={{ asset('backend/assets/img/circle-check.svg') }}
                                            alt="">
                                        <h6>{{ $facility }}</h6>
                                    </div>
                                @endforeach

                            </div>
                            <p class="check-title mt-4">{{ __('Amenities') }}</p>
                            <div class="facilities-container">
                                @foreach ($property->amenities as $amenity)
                                    <div class="d-flex align-items-center gap-2">
                                        <img class="circle-check" src={{ asset('backend/assets/img/circle-check.svg') }}
                                            alt="">
                                        <h6>{{ $amenity }}</h6>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="info-container mt-3">
                        <div class="table-header-title ">
                            <h4>{{ __('Floor Plans') }}</h4>
                        </div>
                        <div class="floor-plan-container">
                            <img src="{{ asset($property->propertyDetail->floorplan_image ?: 'backend/assets/img/floor.svg') }}"
                                alt="">
                            <p class="floor-text">{{ $property->room_info['floor_rang'] ?? '' }}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="add-landlord-button-group">
                <a href="{{ route('landlord.properties.destroy', $property->id) }}" class="btn  border-btn confirm-action" data-method="DELETE">{{ __('Delete') }}</a>
                <a href="{{ route('landlord.properties.edit',$property->id) }}" class="btn theme-btn submit-btn">{{ __('Edit') }}</a>
            </div>
        </div>
    @endsection
