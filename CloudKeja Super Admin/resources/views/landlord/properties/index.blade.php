@extends('layouts.landlord.master')

@section('title')
    {{ __('Property List') }}
@endsection

@section('main_content')
    <div class="woodland-section-container">
        <div class="row">
            <div class="col-lg-12">
                <div class="woodland-card-header">
                    <h3>{{ __('Property List') }}</h3>
                    <div class="action-btn-wrapper">
                        <a href="{{ route('landlord.properties.create') }}" class="modal-btn d-print-none">
                            <i class="fal fa-plus-circle"></i> {{ __('Add property') }}</a>
                    </div>
                </div>
                <div class="woodland-card">
                    <div class="mb-3 d-flex align-items-center  justify-content-between flex-wrap gap-3">
                        <div class=" d-print-none">
                            <form action="{{ route('landlord.properties.filter') }}" method="post"
                                class="filter-form form-inline d-flex align-items-center gap-3 flex-wrap"
                                table="#property-data">
                                @csrf

                                <div class="d-flex align-items-center gap-2 d-print-none custom-select">
                                    <select name="per_page" class="select-drop">
                                        <option value="10">{{ __('Show- 10') }}</option>
                                        <option value="25">{{ __('Show- 25') }}</option>
                                        <option value="50">{{ __('Show- 50') }}</option>
                                        <option value="100">{{ __('Show- 100') }}</option>
                                    </select>
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path d="M13 5.50004C13 5.50004 9.31758 10.5 8 10.5C6.68233 10.5 3 5.5 3 5.5"
                                            stroke="#666666" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                    </svg>
                                </div>
                            </form>
                        </div>

                        <div class="d-flex align-items-center gap-3 d-print-none">
                            <form action="{{ route('landlord.properties.filter') }}" method="post"
                                class="filter-form form-inline d-flex align-items-center gap-3 flex-wrap"
                                table="#property-data">
                                @csrf
                                <div class="position-relative d-print-none">
                                    <input class="search-input" type="" placeholder="Search" name="search"
                                        autocomplete="off">
                                    <i class="fas fa-search position-absolute search-icon"></i>
                                </div>
                            </form>

                            <div class="dropdown">
                                <button class="btn export-btn dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                    <img src="{{ asset('backend/assets/img/icon/export-download.svg') }}" alt="">
                                    {{ __('Export') }}
                                    <img src="{{ asset('backend/assets/img/icon/export-arrow.svg') }}" alt="">
                                </button>
                                <ul class="dropdown-menu export-dropdown">
                                    <li><a class="dropdown-item  export-drop-item"
                                            href="{{ route('landlord.properties.csv') }}"><img
                                                src="{{ asset('backend/assets/img/icon/csv.svg') }}" />
                                            {{ __('Csv') }} </a></li>
                                    <li><a class="dropdown-item export-drop-item"
                                            href="{{ route('landlord.properties.excel') }}"><img
                                                src="{{ asset('backend/assets/img/icon/esv.svg') }}" />
                                            {{ __('Excel') }} </a></li>
                                    <li><a class="dropdown-item export-drop-item print-window"
                                            href="#"><img src="{{ asset('backend/assets/img/icon/print.svg') }}" />
                                            {{ __('Print') }} </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="delete-item delete-show d-none">
                        <div class="delete-item-show">
                            <p class="fw-bold"><span class="selected-count"></span> {{ __('items show') }}</p>
                            <button data-bs-toggle="modal" class="trigger-modal" data-bs-target="#multi-delete-modal"
                                data-url="{{ route('landlord.properties.delete-all') }}">{{ __('Delete') }}</button>
                        </div>
                    </div>

                    <div class="responsibe-table table-height ">
                        <table class="table woodland-table">
                            <thead>
                                <tr>
                                    <th class="w-60">
                                        <div class="d-flex align-items-center gap-3">
                                            <input type="checkbox" class="select-all-delete  multi-delete">
                                        </div>
                                    </th>
                                    <th>{{ __('SL') }}</th>
                                    <th>{{ __('ID') }}</th>
                                    <th>{{ __('Name') }}</th>
                                    <th>{{ __('Category') }}</th>
                                    <th>{{ __('Address') }}</th>
                                    <th>{{ __('Monthly Rent') }}</th>
                                    <th>{{ __('Active/Inactive') }}</th>
                                    <th class="d-print-none">{{ __('Status') }}</th>
                                    <th class="d-print-none">{{ __('Action') }}</th>
                                </tr>
                            </thead>
                            <tbody id="property-data">
                                @include('landlord.properties.datas')
                            </tbody>
                        </table>
                    </div>
                    <div class="woodladn-pagination-wrapper">
                        <nav class="woodland-pagination">
                            <ul class="pagination">
                                <li class="page-item">{{ $properties->links() }}</li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="property-view-modal">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content woodland-modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">@lang('Property View') </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body property-view-body">
                    <ul class="list-group">
                        <li class="list-group-item"><strong>@lang('Name'):</strong> <span id="view-contact-name"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Email'):</strong> <span
                                id="view-contact-email"></span></li>
                        <li class="list-group-item"><strong>@lang('Phone'):</strong> <span
                                id="view-contact-phone"></span></li>
                        <li class="list-group-item"><strong>@lang('Country'):</strong><span id="view-address"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Property Title'):</strong> <span
                                id="view-property-title"></span></li>
                        <li class="list-group-item"><strong>@lang('Description'):</strong> <span
                                id="view-property-description"></span></li>
                        <li class="list-group-item"><strong>@lang('Property Rent'):</strong> <span id="view-rent-price"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Building Name'):</strong> <span
                                id="view-building-name"></span></li>
                        <li class="list-group-item"><strong>@lang('State'):</strong> <span id="view-state"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Postcode'):</strong> <span id="view-postcode"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Floor Rang'):</strong> <span
                                id="view-floor-rang"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Bedroom'):</strong> <span id="view-bedroom"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Bathroom'):</strong> <span id="view-bathroom"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Property Size (Sq. Ft.)'):</strong> <span
                                id="view-property-size"></span></li>
                        <li class="list-group-item"><strong>@lang('Furnishings'):</strong> <span
                                id="view-furnishing"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Parking Lot'):</strong> <span
                                id="view-parking-lot"></span>
                        </li>
                        <li class="list-group-item"><strong>@lang('Rental Deposit'):</strong> <span
                                id="view-rental-deposit"></span></li>
                        <li class="list-group-item"><strong>@lang('Category'):</strong> <span id="view-category"></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('modal')
    @include('landlord.component.multi-delete-modal')
@endpush
