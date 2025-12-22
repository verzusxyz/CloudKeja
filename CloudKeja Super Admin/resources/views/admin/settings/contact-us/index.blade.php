@extends('layouts.admin.master')

@section('title')
    {{ __('Contact Us Settings') }}
@endsection

@section('main_content')
    <div class="woodland-section-container">
        <div class="row">
            <div class="col-lg-12">
                <div class="woodland-card-header">
                    <h3>{{ __('Contact Us Settings') }}</h3>
                </div>
                <div class="woodland-card">

                    <div class="order-form-section p-16">
                        <form action="{{ route('admin.contact-us.store') }}" method="post" enctype="multipart/form-data" class="ajaxform_instant_reload">
                            @csrf
                            <div class="add-suplier-modal-wrapper d-block">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <label>{{ __('Title') }}</label>
                                        <input type="text" name="title" value="{{ $contact_us->value['title'] ?? '' }}"
                                            placeholder="{{ __('Enter Title') }}" required class="form-control">
                                    </div>
                                    <div class="col-lg-12">
                                        <label>{{ __('Button Title') }}</label>
                                        <input type="text" name="button_title"
                                            value="{{ $contact_us->value['button_title'] ?? '' }}"
                                            placeholder="{{ __('Enter Button Title') }}" required class="form-control">
                                    </div>
                                    <div class="row col-lg-12">
                                        <div class="col-11 align-self-center">
                                            <label class="img-label">{{ __('Image') }}</label>
                                            <input type="file" name="image" accept="image/*"
                                                class="form-control file-input-change" data-id="image">
                                        </div>
                                        <div class="col-1 align-self-center">
                                            <img class="table-img" id="image"
                                                src="{{ asset($contact_us->value['image'] ?? 'backend/assets/img/icon/upload.png') }}"
                                                alt="img">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <label>{{ __('Description') }}</label>
                                        <textarea name="description" class="form-control" required rows="3" placeholder="{{ __('Enter Description') }}">{{ $contact_us->value['description'] ?? '' }}</textarea>
                                    </div>
                                    @can('contact-us-update')
                                        <div class="col-lg-12">
                                            <div class="text-center mt-5">
                                                <button type="submit"
                                                    class="theme-btn m-2 submit-btn">{{ __('Update') }}</button>
                                            </div>
                                        </div>
                                    @endcan
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
