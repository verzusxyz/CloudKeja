@extends('layouts.blank')

@section('title')
    {{ __('Privacy-Policy') }}
@endsection

@section('main_content')
    <section class="terms-policy-section">
        <div class="container">
            <div>
                <h2>{{ $privacy_policy->value['privacy_title'] ?? '' }}</h2>
                <div>
                    <p>{{ $privacy_policy->value['description_one'] ?? '' }}</p>
                </div>
                <div class="mt-3">
                    <p>{{ $privacy_policy->value['description_two'] ?? '' }}</p>
                </div>
            </div>
        </div>
    </section>
@endsection
