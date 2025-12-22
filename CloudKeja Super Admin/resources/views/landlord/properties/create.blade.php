@extends('layouts.landlord.master')

@section('title')
    {{__('Property Create')}}
@endsection

@section('main_content')
    <div class="woodland-section-container">
        <form action="{{ route('landlord.properties.store') }}" method="post" id="regForm" enctype="multipart/form-data"
            class="ajaxform_instant_reload">
            @csrf
            <div class="row">
                <div>
                    <div class="chart-table">
                        <div class="woodland-card-header border-bottom pb-3">
                            <h3>{{ __('Add New property') }}</h3>
                        </div>
                        <div class="add-property-progress">
                            <ul id="stepList">
                                <li class="step active"><span class="numbering">@lang('1')</span>@lang('Information')
                                </li>
                                <li class="step"><span class="numbering">@lang('2')</span>@lang('Details')</li>
                                <li class="step"><span class="numbering">@lang('3')</span>@lang('Pricing')</li>
                                <li class="step"><span class="numbering">@lang('4')</span>@lang('Contact')</li>
                                <li class="step"><span class="numbering">@lang('5')</span>@lang('Photo')</li>
                                <li class="step"><span class="numbering">@lang('6')</span>@lang('Successfully')</li>
                            </ul>
                        </div>
                    </div>
                    <div class="woodland-card mt-30">
                        <div class="wizard-tab-form">
                            <div class="h4 title-nine">{{ __('What Would you like to Post?') }}</div>
                            <div class="woodland-form-wrapper">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <label>{{ __('Select A Category') }}</label>
                                        <select class="form-control" id="categoryDropdown" name="category_id" required>
                                            @foreach ($categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wizard-tab-form">
                            <div class="h4 title-nine">{{ __('Property Details') }}</div>
                            <div class="woodland-form-wrapper">
                                <div class="row">
                                    <div class="col-lg-12 building_name_div">
                                        <label>{{ __('Building Name') }}</label>
                                        <input type="text" class="form-control building_name reset_val"
                                            name="building_name" placeholder="@lang('Enter Building Name')">
                                    </div>

                                    <div class="col-lg-12 house_type_div">
                                        <label>@lang('House Type')</label>
                                        <select class="form-control house_type reset_val" name="house_type_id">
                                            <option value=""> {{__('Select one')}} </option>
                                            @foreach ($house_types as $house_type)
                                                <option value="{{ $house_type->id }}">{{ $house_type->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-lg-12 property_type_div">
                                        <label>@lang('Property Type')</label>
                                        <select class="form-control property_type reset_val" name="property_type">
                                            <option value="">@lang('Select one')</option>
                                            <option value="Office space">@lang('Office space')</option>
                                            <option value="Retail space">@lang('Retail space')</option>
                                            <option value="Warehouse / Factory">@lang('Warehouse / Factory')</option>
                                            <option value="Hotel / Resort">@lang('Hotel / Resort')</option>
                                            <option value="Sofo">@lang('Sofo')</option>
                                            <option value="Soho">@lang('Soho')</option>
                                            <option value="Sovo">@lang('Sovo')</option>
                                            <option value="Others">@lang('Others')</option>
                                        </select>
                                    </div>

                                    <div class="col-lg-12 land_property_type_div">
                                        <label>@lang('Property Type')</label>
                                        <select class="form-control land_property_type reset_val" name="property_type">
                                            <option value="">@lang('Select one')</option>
                                            <option value="Residential">@lang('Residential')</option>
                                            <option value="Industrial">@lang('Industrial')</option>
                                            <option value="Agricultural">@lang('Agricultural')</option>
                                            <option value="Commercial">@lang('Commercial')</option>
                                            <option value="Mixed Development">@lang('Mixed Development')</option>
                                            <option value="Others">@lang('Others')</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12 land_size_div">
                                        <label>@lang('Land Size')</label>
                                        <input type="number" class="form-control land_size reset_val"
                                            name="property_info[land_size]" placeholder="@lang('Enter Land Size')">
                                    </div>
                                    <div class="col-lg-12 unit_lot_size_div">
                                        <label>@lang('Unit/Lot Size')</label>
                                        <input type="number" class="form-control unit_lot_size reset_val"
                                            name="room_info[unit_size]" placeholder="@lang('Enter Unit/Lot Size')">
                                    </div>
                                    <div class="col-lg-12 unit_number_div">
                                        <label>@lang('Unit Number')</label>
                                        <input type="text" class="form-control unit_number reset_val"
                                            name="property_info[unit_number]" placeholder="@lang('Enter Unit Number')">
                                    </div>
                                    <div class="col-lg-12 residential_type_div">
                                        <label>@lang('Residential Type')</label>
                                        <select class="form-control residential_type reset_val" name="residential_type">
                                            <option value="">{{ __('Select Residential Type') }}</option>
                                            <option value="Flat"> {{__('Flat')}} </option>
                                            <option value="Apartment"> {{__('Apartment')}} </option>
                                            <option value="Condominium"> {{__('Condominium')}} </option>
                                            <option value="Service Residence"> {{__('Service Residence')}} </option>
                                            <option value="Studio"> {{__('Studio')}} </option>
                                            <option value="Duplex"> {{__('Duplex')}} </option>
                                            <option value="Townhouse Condo"> {{__('Townhouse Condo')}} </option>
                                            <option value="Others"> {{__('Others')}} </option>
                                        </select>
                                    </div>

                                    <div class="col-lg-12 room_residential_type_div">
                                        <label>@lang('Residential Type')</label>
                                        <select class="form-control room_residential_type reset_val"
                                            name="residential_type">
                                            <option value="">{{ __('Select Residential Type') }}</option>
                                            <option value="Condo / Services residence / Penthouse"> {{__('Condo/Services
                                                residence/Penthouse')}} </option>
                                            <option value="Apartment / Flat"> {{__('Apartment/Flat')}} </option>
                                            <option value="Houses"> {{__('Houses')}} </option>
                                            <option value="Shoplot"> {{__('Shoplot')}} </option>
                                            <option value="Sharing a house / Flat"> {{__('Sharing a house/Flat')}} </option>
                                            <option value="Others"> {{__('Others')}} </option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12 floor_range_div">
                                        <label>@lang('Floor Rang')</label>
                                        <select class="form-control floor_range reset_val" name="room_info[floor_rang]">
                                            <option value="">{{ __('Select Floor Range') }}</option>
                                            <option value="High">{{ __('High') }}</option>
                                            <option value="Medium">{{ __('Medium') }}</option>
                                            <option value="Low">{{ __('Low') }}</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12 room_size_div">
                                        <label>@lang('Room Size')</label>
                                        <input type="number" class="form-control room_size reset_val"
                                            name="room_info[room_size]" placeholder="@lang('Enter Room Size')">
                                    </div>
                                    <div class="col-lg-12 bedroom_div">
                                        <label>@lang('Bedroom')</label>
                                        <select class="form-control bedroom_div reset_val" name="room_info[bedroom]">
                                            <option value="">{{ __('Select Bedroom') }}</option>
                                            <option value="01">@lang('01')</option>
                                            <option value="02">@lang('02')</option>
                                            <option value="03">@lang('03')</option>
                                            <option value="04">@lang('04')</option>
                                            <option value="05">@lang('05')</option>
                                            <option value="06">@lang('06')</option>
                                            <option value="07">@lang('07')</option>
                                            <option value="08">@lang('08')</option>
                                            <option value="09">@lang('09')</option>
                                            <option value="10">@lang('10')</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12 bathroom_div">
                                        <label>@lang('Bathroom')</label>
                                        <select class="form-control bathroom reset_val" name="room_info[bathroom]">
                                            <option value="">{{ __('Select Bathroom') }}</option>
                                            <option value="01">@lang('01')</option>
                                            <option value="02">@lang('02')</option>
                                            <option value="03">@lang('03')</option>
                                            <option value="04">@lang('04')</option>
                                            <option value="05">@lang('05')</option>
                                            <option value="06">@lang('06')</option>
                                            <option value="07">@lang('07')</option>
                                            <option value="08">@lang('08')</option>
                                            <option value="09">@lang('09')</option>
                                            <option value="10">@lang('10')</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12 property_size_div">
                                        <label>@lang('Property Size') <small>(@lang('sq. ft.'))</small></label>
                                        <input type="number" class="form-control property_size reset_val"
                                            name="property_info[property_size]" placeholder="@lang('Enter Property Size')">
                                    </div>

                                    <div class="col-lg-12 furnishing_div">
                                        <label>@lang('Furnishings')</label>
                                        <select class="form-control furnishing reset_val" name="furnishing">
                                            <option value="Fully Furnished">@lang('Fully Furnished')</option>
                                            <option value="Partially Furnished">@lang('Partially Furnished')</option>
                                            <option value="Not Furnished">@lang('Not Furnished')</option>
                                        </select>
                                    </div>
                                    <div class="d-flex align-item-center justify-content-between">
                                        <div class="facilities_div">
                                            <div class="d-flex justify-content-between">
                                                <div class="h4 title-nine">@lang('What are the facilities?')</div>
                                            </div>
                                        </div>
                                        <div
                                            class="custom-control d-flex align-items-center justify-content-start gap-2 facilities_div">
                                            <input type="checkbox" class=" form-check-input" id="selectAllFacilities">
                                            <label class="custom-control-label fw-bold mb-0 facilities_div"
                                                for="selectAllFacilities">{{ __('Select All') }}</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 facilities_div">
                                        <div class="property-radio-btn-wrapper">
                                            <ul class="property-radio-btn-list select-all-facility">
                                                @foreach ($facilities as $facility)
                                                    <li>
                                                        <label class="tag-btn check-btn">
                                                            <input type="checkbox" class="facilities reset_val"
                                                                name="facilities[]" value="{{ $facility->id }}">
                                                            <span class="checkmark">{{ $facility->name }}</span>
                                                        </label>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 mt-3 parking_lot_div">
                                        <label>@lang('Parking Lot')</label>
                                        <select class="form-control parking_lot reset_val" name="parking_lot">
                                            <option value="">@lang('Select A One')</option>
                                            <option value="01" @if (old('parking_lot') == '01') selected @endif> {{__('01')}}
                                            </option>
                                            <option value="02" @if (old('parking_lot') == '02') selected @endif> {{__('02')}}
                                            </option>
                                            <option value="03" @if (old('parking_lot') == '03') selected @endif> {{__('03')}}
                                            </option>
                                            <option value="04" @if (old('parking_lot') == '04') selected @endif> {{__('04')}}
                                            </option>
                                            <option value="05" @if (old('parking_lot') == '05') selected @endif> {{__('05')}}
                                            </option>
                                            <option value="06" @if (old('parking_lot') == '06') selected @endif> {{__('06')}}
                                            </option>
                                            <option value="07" @if (old('parking_lot') == '07') selected @endif> {{__('07')}}
                                            </option>
                                            <option value="08" @if (old('parking_lot') == '08') selected @endif> {{__('08')}}
                                            </option>
                                            <option value="09" @if (old('parking_lot') == '09') selected @endif> {{__('09')}}
                                            </option>
                                            <option value="10" @if (old('parking_lot') == '10') selected @endif> {{__('10')}}
                                            </option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12">
                                        <label>@lang('Security Deposit')</label>
                                        <input type="number" class="form-control m-0 reset_val" name="security_deposit"
                                            placeholder="@lang('Enter Security Deposit')" value="{{ old('security_deposit') }}">
                                        <small>@lang('Provide total of security deposit and utility deposit')</small>
                                    </div>
                                    <div class="col-lg-12 mt-4 utility_deposit_div">
                                        <label>@lang('Utility Deposit')</label>
                                        <input type="number" class="form-control m-0 utility_deposit reset_val"
                                            name="utility_deposit" placeholder="@lang('Enter Utility Deposit')"
                                            value="{{ old('utility_deposit') }}">
                                    </div>

                                    <div class="col-lg-12 mt-4 completion_year_div">
                                        <label>@lang('Completion Year')</label>
                                        <select class="form-control reset_val"
                                            name="rent_info[completion_year]">
                                            @for ($i = 2050; $i >= 1950; $i--)
                                                <option @selected($i == date('Y')) value="{{ $i }}">
                                                    {{ $i }}</option>
                                            @endfor
                                        </select>
                                    </div>
                                    <div class="d-flex align-item-center justify-content-between flex-wrap mt-4">
                                        <div class="">
                                            <div class="d-flex justify-content-between">
                                                <div class="h4 title-nine">@lang('What are the amenities?')</div>
                                            </div>
                                        </div>
                                        <div class="custom-control d-flex align-items-center justify-content-start gap-2 ">
                                            <input type="checkbox" class=" form-check-input" id="selectAllAmenities">
                                            <label class="custom-control-label fw-bold mb-0"
                                                for="selectAllAmenities">{{ __('Select All') }}</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="property-radio-btn-wrapper">
                                            <ul class="property-radio-btn-list select-all-amenity">

                                                @foreach ($amenities as $amenity)
                                                    <li>
                                                        <label class="tag-btn check-btn">
                                                            <input type="checkbox" name="amenities[]" class="amenities"
                                                                value="{{ $amenity->id }}">
                                                            <span class="checkmark">{{ $amenity->name }}</span>
                                                        </label>
                                                    </li>
                                                @endforeach

                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 mt-4 tenant_preference_div">
                                        <div class="d-flex justify-content-between">
                                            <div class="h4 title-nine">@lang('What are the amenities?')</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 tenant_preference">
                                        <div class="property-radio-btn-wrapper">
                                            <ul class="property-radio-btn-list select-all-amenity">
                                                <li>
                                                    <label class="tag-btn check-btn">
                                                        <input type="checkbox" name="tenant_preference[male]"
                                                            value="'male'">
                                                        <span class="checkmark">{{ __('Male') }}</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="tag-btn check-btn">
                                                        <input type="checkbox" name="tenant_preference[female]"
                                                            value="female">
                                                        <span class="checkmark">{{ __('Female') }}</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="tag-btn check-btn">
                                                        <input type="checkbox" name="tenant_preference[couple]"
                                                            value="couple">
                                                        <span class="checkmark">{{ __('Couple') }}</span>
                                                    </label>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wizard-tab-form">
                            <div class="h4 title-nine">@lang('Describe the Property')</div>
                            <div class="woodland-form-wrapper">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <label>@lang('Property Title')</label>
                                        <input type="text" name="property_info[property_title]"
                                            class="form-control reset_val" placeholder="@lang('Enter property title')"
                                            value="{{ old('property_title') }}">
                                    </div>
                                    <div class="col-lg-12">
                                        <label>@lang('Description')</label>
                                        <textarea name="property_info[property_description]" cols="30" rows="10" class="form-control reset_val" placeholder="@lang('Enter description')">{{ old('property_description') }}</textarea>
                                    </div>
                                    <div class="col-lg-12 property_rent_div">
                                        <label>@lang('Property Rent')</label>
                                        <input type="number" name="rent_info[property_rent]"
                                            class="form-control property_rent reset_val" placeholder="@lang('Enter property rent')"
                                            value="{{ old('property_rent') }}">
                                    </div>
                                    <div class="col-lg-12 monthly_rent_div">
                                        <label>@lang('Monthly Rent')<span class="text-red">*</span></label>
                                        <input type="number" name="rent_info[monthly_rent]"
                                            class="form-control monthly_rent reset_val" placeholder="@lang('Enter monthly rent')"
                                            value="{{ old('property_rent') }}" required>
                                    </div>
                                    <div class="col-lg-12 rental_period_div">
                                        <label>@lang('Minimum Rental Period')</label>
                                        <select class="form-control rental_period reset_val"
                                            name="rent_info[rental_period]">
                                            <option value="6 Month">@lang('6 Month')</option>
                                            <option value="1 Year">@lang('1 Year')</option>
                                            <option value="1.5 Years">@lang('1.5 Years')</option>
                                            <option value="2 Years">@lang('2 Years')</option>
                                            <option value="2.5 Years">@lang('2.5 Years')</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-12 lot_number_div">
                                        <label>@lang('Lot Number')</label>
                                        <input type="text" name="property_info[lot_number]"
                                            class="form-control lot_number reset_val" placeholder="@lang('Enter lot number')"
                                            value="{{ old('lot_number') }}">
                                    </div>
                                    <div class="col-lg-12 address_div">
                                        <label>@lang('Address')</label>
                                        <input type="text" class="form-control reset_val" name="address_info[address]"
                                            placeholder="@lang('Enter address')">
                                    </div>
                                    <div class="col-lg-12 country_div">
                                        <label>@lang('Country')</label>
                                        <select class="form-control country reset_val" name="address_info[country]">
                                            <option value="">{{ __('Select country') }}</option>
                                            @foreach ($countries as $country)
                                                <option value="{{ $country['name'] }}">{{ $country['name'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-lg-12 city_div">
                                        <label>@lang('City')</label>
                                        <input type="text" class="form-control reset_val" name="address_info[city]"
                                            placeholder="@lang('Enter city')">
                                    </div>

                                    <div class="col-lg-12 state_div">
                                        <label>@lang('State')</label>
                                        <input type="text" class="form-control reset_val" name="address_info[state]"
                                            placeholder="@lang('Enter state')">
                                    </div>

                                    <div class="col-lg-12 postcode_div">
                                        <label>@lang('Postcode')</label>
                                        <input type="number" class="form-control reset_val"
                                            name="address_info[postcode]" placeholder="@lang('Enter postcode')">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wizard-tab-form">
                            <div class="h4 title-nine">@lang('Contact')</div>
                            <div class="woodland-form-wrapper">
                                <div class="row">
                                    <div class="col-lg-12 mb-4">
                                        <label>@lang('Full Name')<span class="text-red">*</span></label>
                                        <input type="text" class="form-control m-0 reset_val" name="full_name"
                                            placeholder="@lang('Enter full name')" required>
                                        <small>@lang('As per NID/ Passport')</small>
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="phone">@lang('Whatsapp Number')<span class="text-red">*</span></label>
                                        <input type="number" id="phone" class="form-control reset_val"
                                            name="phone" placeholder="@lang('Enter whatsapp number')" required>
                                    </div>
                                    <div class="col-lg-12">
                                        <label>@lang('Email Address')</label>
                                        <input type="email" name="email" class="form-control reset_val"
                                            placeholder="@lang('Enter email address')">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wizard-tab-form">
                            <div id="dynamic-cover-image-area" class="add-photo-grid">
                                <div class="add-photo-items">
                                       <div class="remove-img-btn d-none">
                                        <img class="cross"
                                            src="{{ asset('backend/assets/img/icon/cross.svg') }}"
                                            alt="">
                                        </div>
                                    <img class="image-preview mt-4"
                                        src="{{ asset('backend/assets/img/property-img/add-photo/1.png') }}"
                                        alt="">
                                          <img class="d-none default-img mt-4"
                                        src="{{asset('backend/assets/img/property-img/add-photo/1.png')}}"
                                        alt="">
                                    <label>
                                        <input type="file" class="d-none reset_val file-input-upload"
                                            name="cover_image[0]" id="">
                                        <div class="images-upload-btn">@lang('Main picture')</div>
                                    </label>
                                </div>
                                <div class="add-photo-items room_category">
                                       <div class="remove-img-btn d-none">
                                        <img class="cross"
                                            src="{{ asset('backend/assets/img/icon/cross.svg') }}"
                                            alt="">
                                        </div>
                                    <img class="image-preview mt-4"
                                        src="{{ asset('backend/assets/img/property-img/add-photo/2.png') }}"
                                        alt="">
                                          <img class="d-none default-img mt-4"
                                        src="{{asset('backend/assets/img/property-img/add-photo/2.png')}}"
                                        alt="">
                                    <label>
                                        <input type="file" class="d-none reset_val file-input-upload room_category"
                                            name="living_image">
                                        <div class="images-upload-btn">@lang('Living Room')</div>
                                    </label>
                                </div>
                                <div class="add-photo-items room_category">
                                       <div class="remove-img-btn d-none">
                                        <img class="cross"
                                            src="{{ asset('backend/assets/img/icon/cross.svg') }}"
                                            alt="">
                                        </div>
                                    <img class="image-preview mt-4"
                                        src="{{ asset('backend/assets/img/property-img/add-photo/3.png') }}"
                                        alt="">
                                          <img class="d-none default-img mt-4"
                                        src="{{asset('backend/assets/img/property-img/add-photo/3.png')}}"
                                        alt="">
                                    <label>
                                        <input type="file" class="d-none reset_val file-input-upload room_category"
                                            name="bedroom_image">
                                        <div class="images-upload-btn">@lang('Bedroom')</div>
                                    </label>
                                </div>
                                <div class="add-photo-items room_category">
                                       <div class="remove-img-btn d-none">
                                        <img class="cross"
                                            src="{{ asset('backend/assets/img/icon/cross.svg') }}"
                                            alt="">
                                        </div>
                                    <img class="image-preview mt-4"
                                        src="{{ asset('backend/assets/img/property-img/add-photo/4.png') }}"
                                        alt="">
                                          <img class="d-none default-img mt-4"
                                        src="{{asset('backend/assets/img/property-img/add-photo/4.png')}}"
                                        alt="">
                                    <label>
                                        <input type="file" class="d-none reset_val file-input-upload room_category"
                                            name="kitchen_image">
                                        <div class="images-upload-btn">@lang('Kitchen')</div>
                                    </label>
                                </div>
                                <div class="add-photo-items room_category">
                                       <div class="remove-img-btn d-none">
                                        <img class="cross"
                                            src="{{ asset('backend/assets/img/icon/cross.svg') }}"
                                            alt="">
                                        </div>
                                    <img class="image-preview mt-4"
                                        src="{{ asset('backend/assets/img/property-img/add-photo/5.png') }}"
                                        alt="">
                                          <img class="d-none default-img mt-4"
                                        src="{{asset('backend/assets/img/property-img/add-photo/5.png')}}"
                                        alt="">
                                    <label>
                                        <input type="file" class="d-none reset_val file-input-upload room_category"
                                            name="bathroom_image">
                                        <div class="images-upload-btn">@lang('Bathroom')</div>
                                    </label>
                                </div>
                                <div class="add-photo-items room_category">
                                       <div class="remove-img-btn d-none">
                                        <img class="cross"
                                            src="{{ asset('backend/assets/img/icon/cross.svg') }}"
                                            alt="">
                                        </div>
                                    <img class="image-preview mt-4"
                                        src="{{ asset('backend/assets/img/property-img/add-photo/6.png') }}"
                                        alt="">
                                          <img class="d-none default-img mt-4"
                                        src="{{asset('backend/assets/img/property-img/add-photo/6.png')}}"
                                        alt="">
                                    <label>
                                        <input type="file" class="d-none reset_val file-input-upload room_category"
                                            name="floorplan_image">
                                        <div class="images-upload-btn">@lang('Floorplan')</div>
                                    </label>
                                </div>

                                {{-- Extra cover Image --}}
                            <div id="dynamic-cover-image-area">
                                <div class="image-item-wrapper">
                                    <div class="add-photo-items cat_group_1">
                                        <div class="remove-img-btn d-none" title="Remove Image">
                                            <img class="cross" src="{{ asset('backend/assets/img/icon/cross.svg') }}" alt="Delete">
                                        </div>
                                        <img class="image-preview mt-4" src="{{ asset('backend/assets/img/property-img/add-photo/camera.png') }}" alt="Preview">
                                        <img class="d-none default-img mt-4" src="{{ asset('backend/assets/img/property-img/add-photo/camera.png') }}" alt="Preview">
                                        <label>
                                            <input type="file" class="d-none reset_val file-input-upload cat_group_1" name="cover_image[]" accept="image/*">
                                            <div class="images-upload-btn">@lang('Upload More')</div>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            </div>
                            <div class="col-lg-12 mt-4">
                                <div class="d-flex align-items-center terms-condition">
                                    <input type="checkbox" name="term_condition" id="toggle-term" checked
                                        class="me-2 reset_val" required>
                                    <label for="toggle-term" class="mb-0">@lang('I agree with') <span>Terms & Conditions</span></label>
                                </div>
                            </div>
                        </div>
                        <div class="w-100 wizard-btn-wrapper">
                          <div class="d-flex justify-content-center justify-content-md-center add-landlord-button-group">
                            <button class="btn border-btn" type="button" id="prevBtn">Previous</button>
                            <button type="button" class="btn theme-btn nextButton submit-btn" id="nextBtn">Continue</button>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@push('asset_js')
    <script src="{{ asset('maan/js/properties.js') }} "></script>
@endpush
