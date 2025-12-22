<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers as CONTROLLER;
use Illuminate\Support\Facades\Artisan;

// Security Deposit & Rent payment
Route::get('/online-payments-gateways/{payment_id}/{tenant_id}', [CONTROLLER\PaymentController::class, 'DepositRentPayment'])->name('online.payments-gateways.index');
//Subscription Payment
Route::get('/payments-gateways/{plan_id}/{landlord_id}', [CONTROLLER\PaymentController::class, 'index'])->name('payments-gateways.index');

Route::post('/payments/{plan_id}/{gateway_id}', [CONTROLLER\PaymentController::class, 'payment'])->name('payments-gateways.payment');
Route::get('/payment/success', [CONTROLLER\PaymentController::class, 'success'])->name('payment.success');
Route::get('/payment/failed', [CONTROLLER\PaymentController::class, 'failed'])->name('payment.failed');
Route::get('/order-status', [CONTROLLER\PaymentController::class, 'orderStatus'])->name('order.status');

Route::get('/term-conditions', [CONTROLLER\TermConditionController::class, 'index'])->name('term.index');
Route::get('/privacy-policy', [CONTROLLER\PolicyPolicyController::class, 'index'])->name('policy.index');
Route::resource('contact-us', CONTROLLER\ContactUsController::class)->only('index', 'store');

// Payment Routes End

Route::group([
    'namespace' => 'App\Library',
], function () {
    Route::get('/payment/paypal', 'Paypal@status');
    Route::get('/payment/mollie', 'Mollie@status');
    Route::post('/payment/paystack', 'Paystack@status')->name('paystack.status');
    Route::get('/paystack', 'Paystack@view')->name('paystack.view');
    Route::get('/razorpay/payment', 'Razorpay@view')->name('razorpay.view');
    Route::post('/razorpay/status', 'Razorpay@status');
    Route::get('/mercadopago/pay', 'Mercado@status')->name('mercadopago.status');
    Route::get('/payment/flutterwave', 'Flutterwave@status');
    Route::get('/payment/thawani', 'Thawani@status');
    Route::get('/payment/instamojo', 'Instamojo@status');
    Route::get('/payment/toyyibpay', 'Toyyibpay@status');
    Route::get('/payment/billplz', 'Billplz@status');
    Route::get('payu/payment', 'Payu@view')->name('payu.view');
    Route::post('/payu/status', 'Payu@status')->name('payu.status');
    Route::post('/phonepe/status', 'PhonePe@status')->name('phonepe.status');
    Route::post('/paytm/status', 'Paytm@status')->name('paytm.status');
    Route::get('/tap-payment/status', 'TapPayment@status')->name('tap-payment.status');
});

Route::get('/cache-clear', function () {
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');

    return back()->with('success', __('Cache has been cleared.'));
});
