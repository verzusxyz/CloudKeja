@extends('layouts.blank')

@section('main_content')
<div class="invoice-container">
    <div class="invoice-content">
        <h4>{{ __('Refund Invoice') }}</h4>
        <div class="d-flex align-items-center justify-content-between">
            <div class="">
                <img src="{{ asset(get_option('general')['logo'] ?? 'backend/assets/img/logo.svg') }}" alt="">
                <div class="pt-2">
                    <p class="invoice-header-p">Invoice ID: <span>{{ $refund->invoice_no }}</span></p>
                    <p class="invoice-header-p pt-1">Invoice Date: <span>{{ formatted_date($refund->created_at) }}</span></p>
                    <p class="invoice-header-p pt-1">Rental Month: <span>{{ currency_format($refund->rent_advance ?? 0) }}</span></p>
                </div>
            </div>
            <div class="">
                @if($refund->status == 'paid')
                <p class="paid-status">paid</p>
                @elseif($refund->status == 'unpaid')
                <p class="unpaid-status">Unpaid</p>
                @else
                <p class="reject-status">Rejected</p>
                @endif
            </div>
        </div>
        <hr>
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <h6>Landlord Information</h6>
                <p class="info-p">Name: <span>{{ $refund->landlord?->name }}</span></p>
                <p class="info-p pt-2">Address: <span>{{ collect($refund->tenant?->user_details['address_info'] ?? [])->only(['address_one', 'city'])->filter()->implode(', ') }}</span></p>
                <p class="info-p pt-2">Phone: <span>{{ $refund->landlord?->phone['mobile_no'] ?? 'N/A' }}</span></p>
                <p class="info-p pt-2">Email: <span>{{ $refund->landlord?->email }}</span></p>
            </div>
            <div>
                <div class="text-end">
                    <h6>Bill To (Tenant)</h6>
                    <p class="info-p">Name: <span>{{ $refund->tenant?->name }}</span></p>
                    <p class="info-p pt-2">Address: <span>{{ collect($refund->tenant?->user_details['address_info'] ?? [])->only(['address_one', 'city'])->filter()->implode(', ') }}</span></p>
                    <p class="info-p pt-2">Phone: <span>{{ $refund->tenant?->phone['mobile_no'] ?? 'N/A' }}</span></p>
                    <p class="info-p pt-2">Email: <span>{{ $refund->tenant?->email ?? '' }}</span>
                    </p>
                </div>
            </div>
        </div>

        <div class="mt-4">
            <h6>Item</h6>
            <div class="table-responsive">
                <table class="table table-bordered invoice-table-new">
                    <thead class="invoice-table-th">
                        <tr>
                            <th>ID</th>
                            <th>Property Name</th>
                            <th>Refund Reason </th>
                            <th>SEC. Deposit</th>
                            <th>Utility Deposit</th>
                            <th>Advance Rental (1)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{{ $refund->property?->puid }}</td>
                            <td>{{ $refund->property->propertyDetail->property_info['property_title'] ?? '' }}</td>
                            <td>{{ $refund->refund_reason }}</td>
                            <td>{{ currency_format($refund->deposit?->deposit_amount ?? 0) }}</td>
                            <td>{{ currency_format($refund->deposit?->utility_advance ?? 0) }}</td>
                            <td>{{ currency_format($refund->deposit?->rent_advance ?? 0) }}</td>
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
                                <td class="border-0 text-end">{{ currency_format($refund->amount ?? 0) }}</td>
                            </tr>
                            <tr>
                                <td class="border-0 text-end">Total:</td>
                                <td class="border-0 text-end">{{ currency_format($refund->amount ?? 0) }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr>
            <div class="">
                <h6>Bank Information</h6>
                <p class="info-p">Account Name: <span>{{ $refund->bank_info['account_name'] ?? '' }}</span></p>
                <p class="info-p pt-2">Bank Name: <span>{{ $refund->bank_info['bank_name'] ?? '' }}</span></p>
                <p class="info-p pt-2">Account Number: <span>{{ $refund->bank_info['account_no'] ?? ''}}</span></p>
            </div>
        </div>
    </div>
</div>
@endsection
