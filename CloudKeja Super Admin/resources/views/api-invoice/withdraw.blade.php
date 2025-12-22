@extends('layouts.blank')

@section('main_content')
<div class="invoice-container">
    <div class="invoice-content">
        <h4>{{ __('WITHDRAW INVOICE') }}</h4>
        <div class="d-flex align-items-center justify-content-between">
            <div class="">
                <img src="{{ asset(get_option('general')['logo'] ?? 'backend/assets/img/logo.svg') }}" alt="">
                <div class="pt-2">
                    <p class="invoice-header-p">Receipt ID: <span> {{ $withdraw->invoice_no }}</span></p>
                    <p class="invoice-header-p pt-1">Receipt Date: <span>{{ formatted_date($withdraw->created_at) }}</span></p>
                </div>
            </div>
        </div>
        <hr>
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <h6>Bill From(Admin)</h6>
                <p class="info-p">Name: <span>{{ get_option('general')['app_name'] }}</span></p>
                <p class="info-p pt-2">Address: <span>{{ get_option('general')['app_address'] }}</span></p>
                <p class="info-p pt-2">Phone: <span>{{ get_option('general')['app_phone'] }}</span></p>
                <p class="info-p pt-2">Email: <span>{{ get_option('general')['app_email'] }}</span></p>
            </div>
            <div>
                <div class="text-end">
                <h6>{{ __('Landlord Information') }}</h6>
                <p class="info-p">Name: <span>{{ $withdraw->user?->name }}</span></p>
                <p class="info-p pt-2">Address: <span>{{ collect($withdraw->user?->user_details['address_info'] ?? [])->only(['address_one', 'city'])->filter()->implode(', ') }}</span></p>
                <p class="info-p pt-2">Phone: <span>{{ $withdraw->user?->phone['mobile_no'] ?? 'N/A' }}</span></p>
                <p class="info-p pt-2">Email: <span>{{ $withdraw->user?->email ?? ''}}</span></p>
                </div>
            </div>
        </div>

        <div class="mt-4">
            <h6>Item</h6>
            <div class="table-responsive">
                <table class="table table-bordered invoice-table-new">
                    <thead class="invoice-table-th">
                        <tr>
                            <th>Payout Request amount</th>
                            <th>Fees</th>
                            <th>Subtotal</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{{ currency_format($withdraw->amount ?? 0) }}</td>
                            <td>{{ currency_format($withdraw->charge ?? 0) }}</td>
                            <td>{{ currency_format($withdraw->amount ?? 0) }}</td>
                            <td>{{ currency_format(($withdraw->amount ?? 0) + ($withdraw->charge ?? 0)) }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="row">
                <div class="col-6"></div>
                <div class="col-6">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="border-0 text-end">Subtotal:</td>
                                <td class="border-0 text-end">{{ currency_format($withdraw->amount ?? 0) }}</td>
                            </tr>
                            <tr>
                                <td class="border-0 text-end">Total:</td>
                                <td class="border-0 text-end">{{ currency_format(($withdraw->amount ?? 0) + ($withdraw->charge ?? 0)) }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
