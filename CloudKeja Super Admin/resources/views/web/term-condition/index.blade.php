@extends('layouts.blank')

@section('title')
    {{ __('Privacy-Policy') }}
@endsection

@section('main_content')
    <section class="terms-policy-section">
        <div class="container">
            <div>
                <h2>{{ $term_condition->value['term_title'] ?? '' }}</h2>
                <div>
                    <p>{{ $term_condition->value['description_one'] ?? '' }}</p>
                </div>
                <div class="mt-3">
                    <p>{{ $term_condition->value['description_two'] ?? '' }}</p>
                </div>
            </div>
        </div>
    </section>

@endsection
