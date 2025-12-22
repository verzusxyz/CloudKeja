@extends('layouts.admin.master')

@section('title')
    {{ __('Property Preview') }}
@endsection

@section('main_content')
    <div class="woodland-section-container">
        <div class="row">
            <div class="col-lg-8">
                <div class="woodland-card">
                    <div class="woodland-card-header">
                        <h3>{{ __('Property Preview') }}</h3>
                        <a href="{{ route('admin.properties.index') }}" class="text-black"><i class="far fa-times"></i></a>
                    </div>

                    <div class="mt-2">

                        <swiper-container class="mySwiper" thumbs-swiper=".mySwiper2" space-between="10" navigation="false">
                            @foreach ($property->cover_image ?? [] as $key=>$image)
                                <swiper-slide>
                                    <img src="{{ asset($image ?: 'backend/assets/img/property-img/add-photo/camera.png') }}" alt="">
                                </swiper-slide>
                            @endforeach
                        </swiper-container>

                        <swiper-container class="mySwiper2" space-between="10" slides-per-view="5" free-mode="true" watch-slides-progress="true">
                            @foreach ($property->cover_image ?? [] as $image)
                                <swiper-slide>
                                    <img src="{{ asset($image ?: 'backend/assets/img/property-img/add-photo/camera.png') }}" alt="">
                                </swiper-slide>
                            @endforeach
                        </swiper-container>

                        <div class="mt-2">
                            <h4 class="preview-title">{{ $property->propertyDetail->property_info['property_title'] ?? '' }}</h4>
                            <p class="mt-2">{{ $property->category->name ?? '' }}</p>
                            <p class="mt-2">{{ __('Status') }} :
                                <span class="{{$property->status == 0 ? 'pending_status' :  ($property->status == 1 ? 'approve_status' :  ($property->status == 2 ? 'processing_status' :  'reject_status')) }}">
                                    {{ $property->status == 0 ? __('Pending') :  ($property->status == 1 ? __('Approved') :  ($property->status == 2 ? __('Inactive') :  __('Rejected')))  }}
                                </span>
                            </p>
                            <div class="d-flex align-items-center gap-2 mt-2">
                                <img class="location-icon" src={{ asset('backend/assets/img/location.svg') }}  alt="" srcset="">
                                <p>{{ ($property->address_info['address'] ?? '') . ', ' . ($property->address_info['city'] ?? '') . ', ' . ($property->address_info['state'] ?? '') }}</p>
                            </div>
                            <h5 class="preview-price mt-3">{{ currency_format($property->rent_info['monthly_rent'] ?? 0) }} / <span>{{ $property->rent_info['rental_period'] ?? '' }}</span></h5>
                            <hr class="preview-hr">
                            <h5 class="preview-des">{{ __('Description') }}</h5>
                            <p class="preview-pera">{{ $property->rent_info['property_description'] ?? '' }}</p>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                <tr>
                                    <td class="border-0 p-0 pt-3 mb-2">
                                        <div class="table-header-title mt-2 mb-2">
                                            <h4 class="">{{ __('Building Details') }}
                                            </h4>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Building Name') }}</td>
                                    <td class="border-0">: {{ $property->building_name }}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Property Address') }}</td>
                                    <td class="border-0">: {{ ($property->address_info['address'] ?? '') . ', ' . ($property->address_info['city'] ?? '') . ', ' . ($property->address_info['state'] ?? '') }}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Completion Year') }}</td>
                                    <td class="border-0">: {{ $property->rent_info['completion_year'] ?? ''  }}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Lot Number') }}</td>
                                    <td class="border-0">: {{ $property->propertyDetail->property_info['lot_number'] ?? '' }}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 p-0 pt-3 mb-2">
                                        <div class="table-header-title mt-2 mb-2">
                                            <h4>{{ __('Property Types') }}</h4>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Residential Type') }}</td>
                                    <td class="border-0">: {{ $property->propertyDetail->residential_type ?? '' }}</td>

                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Furnishing') }}</td>
                                    <td class="border-0">: {{ $property->propertyDetail->furnishing ?? '' }}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Floor Range') }}</td>
                                    <td class="border-0">: {{ $property->room_info['floor_rang'] ?? '' }}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Bedroom') }}</td>
                                    <td class="border-0">: {{ $property->room_info['bedroom'] ?? '' }} {{__('beds')}} </td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Bathroom') }}</td>
                                    <td class="border-0">: {{ $property->room_info['bathroom'] ?? '' }} {{__('baths')}} </td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Property Size') }}</td>
                                    <td class="border-0">: {{ $property->propertyDetail->property_info['property_size'] ?? '' }} {{__('sq.ft.')}} </td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Security Deposit') }}</td>
                                    <td class="border-0">: {{ currency_format($property->security_deposit ?? 0) }}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 details-name">{{ __('Utility Deposit') }}</td>
                                    <td class="border-0">: {{ currency_format($property->utility_deposit ?? 0) }}</td>
                                </tr>


                                </tbody>
                            </table>
                        </div>

                        <div class="table-header-title mt-2 mb-2">
                            <h4> {{__('Features')}} <span> {{__('(Facilities & Amenities)')}} </span>
                            </h4>
                        </div>
                        <p class="check-title mt-3"> {{__('Facilities')}} </p>
                        <div class="facilities-container">
                            @foreach ($property->facilities ?? [] as $facility)
                                <div class="d-flex align-items-center gap-2">
                                    <img class="circle-check" src={{ asset('backend/assets/img/circle-check.svg') }} alt="">
                                    <h6>{{ $facility }}</h6>
                                </div>
                            @endforeach
                        </div>
                        <p class="check-title mt-4"> {{__('Amenities')}} </p>
                        @foreach ($property->amenities ?? [] as $amenity)
                            <div class="d-flex align-items-center gap-2">
                                <img class="circle-check" src={{ asset('backend/assets/img/circle-check.svg') }} alt="">
                                <h6>{{ $amenity }}</h6>
                            </div>
                        @endforeach
                        </div>

                        <div class="info-container mt-3">
                            <div class="table-header-title ">
                                <h4>{{ __('Floor Plans') }}</h4>
                            </div>
                            <div class="floor-plan-container">
                                <img src={{ asset($property->propertyDetail->floorplan_image ?? 'backend/assets/img/floor.svg') }} alt="">
                                <p class="floor-text">{{ $property->room_info['floor_rang'] ?? '' }}</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('asset_js')
    <script src="{{ asset('maan/js/properties.js') }} "></script>
@endpush
