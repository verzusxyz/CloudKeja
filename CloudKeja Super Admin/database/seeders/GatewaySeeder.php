<?php

namespace Database\Seeders;

use App\Models\Gateway;
use Illuminate\Database\Seeder;

class GatewaySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $gateways = array(
            array('name' => 'Stripe', 'currency_id' => '4', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"stripe_key":"STRIPE_PUBLIC_KEY","stripe_secret":"STRIPE_SECRET_KEY"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\StripeGateway', 'phone_required' => '0', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Mollie', 'currency_id' => '4', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"api_key":"MOLLIE_API_KEY"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Mollie', 'phone_required' => '0', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Paystack', 'currency_id' => '98', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"public_key":"PAYSTACK_PUBLIC_KEY","secret_key":"PAYSTACK_SECRET_KEY"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Paystack', 'phone_required' => '0', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Razorpay', 'currency_id' => '60', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"key_id":"RAZORPAY_PUBLIC_KEY","key_secret":"RAZORPAY_SECRET_KEY"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Razorpay', 'phone_required' => '0', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Instamojo', 'currency_id' => '60', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"x_api_key":"INSTAMOJO_API_KEY","x_auth_token":"INSTAMOJO_AUTH_TOKEN"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Instamojo', 'phone_required' => '1', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Toyyibpay', 'currency_id' => '82', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"user_secret_key":"TOYYIBPAY_SECRET_KEY","cateogry_code":"5cc45t69"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Toyyibpay', 'phone_required' => '1', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Flutterwave', 'currency_id' => '98', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"public_key":"FLWPUBK_PUBLIC_KEY","secret_key":"FLWSECK_SECRET_KEY","encryption_key":"FLWSECK_ENCRYPT_KEY","payment_options":"card"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Flutterwave', 'phone_required' => '0', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Thawani', 'currency_id' => '101', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '2', 'image' => NULL, 'data' => '{"secret_key":"THAWANI_SECRET_KEY","publishable_key":"THAWANI_PUBLISHABLE_KEY"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Thawani', 'phone_required' => '1', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Tap Payment', 'currency_id' => 116, 'mode' => 'Sandbox', 'status' => '1', 'charge' => 2, 'image' => NULL, 'data' => '{"secret_key":"TAPPAYMENT_SECRET_KEY","currency":"SAR"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\TapPayment', 'phone_required' => 0, 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Billplz', 'currency_id' => '82', 'mode' => 'Sandbox', 'status' => '1', 'charge' => 2, 'image' => NULL, 'data' => '{"api_key":"BILLPLZ_API_KEY","collection_id":"ok2px0sb"}', 'manual_data' => NULL, 'is_manual' => '0', 'accept_img' => '0', 'namespace' => 'App\\Library\\Billplz', 'phone_required' => '0', 'instructions' => NULL, 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2024-02-18 17:54:44'),

            array('name' => 'Offline', 'currency_id' => '4', 'mode' => 'Sandbox', 'status' => '1', 'charge' => '0', 'image' => NULL, 'data' => '', 'manual_data' => '{"bank_info":{"bank_name":"May Bank","acc_holder":"FIRDAUS GROUP SDN BHD","acc_number":"562548543851"},"label":["Payment Note"],"is_required":["0"]}', 'is_manual' => '1', 'accept_img' => '1', 'namespace' => NULL, 'phone_required' => '0', 'instructions' => 'The payment require manual approve by the admin within 24~48 hours.', 'created_at' => '2024-02-18 17:45:52', 'updated_at' => '2025-01-04 07:29:37')
        );

        Gateway::insert($gateways);
    }
}
