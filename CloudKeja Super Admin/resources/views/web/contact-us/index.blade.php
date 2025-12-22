@extends('layouts.blank')

@section('title')
    {{__('Contact Us')}}
@endsection

@section('main_content')
<section class="contact-section ">
    <div class="container  ">
        <div class="section-title text-center pt-4 mb-5">
            <h2>{{ $contact_us->value['title'] ?? '' }}</h2>
            <p>
                {{ $contact_us->value['description'] ?? '' }}
            </p>
        </div>
        <div class="row">
            <div class="col-lg-6 mb-3 align-self-center">
                <div class="contact-image">
                    <img src="{{ asset($contact_us->value['image'] ?? 'backend/assets/img/no_image.jpg') }}"
                        alt="image" class="w-100 object-fit-cover rounded-2" />
                </div>
            </div>
            <div class="col-lg-6 mb-3 align-self-center">
                <form action="{{ route('contact-us.store') }}" method="post" class="ajaxform_instant_reload">
                    @csrf
                    <div class="row contact">
                        <div class="col-md-12 mb-2">
                            <label for="full-name" class="col-form-label fw-medium">{{ __('Full Name') }} <span class="text-orange">*</span></label>
                            <input type="text" name="name" class="form-control" required id="full-name" placeholder="{{ __('Enter full name') }}" />
                        </div>

                        <div class="col-md-12 mb-2">
                            <label for="phone-number" class="col-form-label fw-medium">{{ __('Phone Number') }} <span
                                    class="text-orange">*</span></label>
                            <input type="number" name="phone" class="form-control" required id="phone-number"
                                placeholder="{{ __('Enter phone number') }}" />
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="email" class="col-form-label fw-medium">{{ __('Email') }} <span
                                    class="text-orange">*</span></label>
                            <input type="email"  name="email" class="form-control" required id="email"
                                placeholder="{{ __('Enter email address') }}" />
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="company-name" class="col-form-label fw-medium">{{ __('Company') }}
                                <small class="text-body-secondary">({{__('Optional')}})</small></label>
                            <input type="text" name="company_name" class="form-control"
                                placeholder="{{ __('Enter company name') }}" />
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="message" class="col-form-label fw-medium">{{ __('Message') }}</label>
                            <textarea  name="message" class="form-control" required rows="4" placeholder="{{ __('Enter your message') }}"></textarea>
                        </div>

                        <div class="py-1 mt-1">
                            <button type="submit" class="custom-btn custom-message-btn submit-btn">
                                {{ $contact_us->value['button_title'] ?? 'Send' }}
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection
