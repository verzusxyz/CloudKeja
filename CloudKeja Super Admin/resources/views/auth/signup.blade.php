@extends('layouts.auth.master')

@section('main_content')
    <div class="mybazar-login-section">
        <div class="mybazar-login-wrapper">
            <div class="login-wrapper">
                <div class="login-header">
                    <img src="{{ asset(get_option('general')['logo'] ?? 'backend/assets/img/logo.svg') }}" alt="logo">
                </div>
                <div class="title-container">
                    <h4 class="greeting"> {{__('Create an Free Account')}} </h4>
                    <p class="text mt-1"> {{__('Enter your credentials to access your account')}} </p>
                </div>
                <div class="login-body">
                    <form action="{{route('signup.store')}}" method="POST" class="user_create_form">
                        @csrf
                        <div class="input-group">
                            <span class="input-icon">
                                <img src="{{ asset('backend/assets/img/icon/user-icon.svg') }}" alt="">
                            </span>
                            <input type="text" name="name" id="name" placeholder="@lang('Enter your full name')" class="form-control">
                        </div>
                        <div class="input-group">
                            <span class="input-icon">
                                <img src="{{ asset('backend/assets/img/icon/mail.svg') }}" alt="">
                            </span>
                            <input type="email" name="email" id="email" placeholder="@lang('Enter your email')" class="form-control">
                        </div>
                        <div class="input-group">

                            <span class="hide-pass">
                                <img src="{{asset('backend/assets/img/icon/Hide.svg')}}" alt="">
                                <img src="{{asset('backend/assets/img/icon/show.svg')}}" alt="">
                            </span>

                                <span class="input-icon">
                                    <img src="{{ asset('backend/assets/img/icon/Lock.svg') }}" alt="">
                                </span>
                                <input type="password" class="form-control" name="password" id="password" placeholder="@lang('Enter password')">

                        </div>
                        <button type="submit" class="btn login-btn submit-btn">{{__('Sign Up')}}</button>
                    </form>
                    <span class="quick-demo-login text-center mt-4 mb-3"> {{__('Already have an account?')}}  <a href="{{url('/')}}">@lang(' Log In')</a></span>
                </div>
            </div>
        </div>
        <div class="login-img">
            <img src="{{ asset(get_option('general')['login_page_img'] ?? 'backend/assets/img/login-img.svg') }}" />
        </div>
    </div>
@endsection

@push('modal')
    @include('admin.component.modal')
@endpush
