<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\UserDetail;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = array(
            array('unique_id' => '687324', 'name' => 'Alex', 'role' => 'landlord', 'email' => 'landlord@acnoo.com', 'image' => 'uploads/25/05-946/1748665555.jpeg', 'phone' => '{"mobile_code":"088","mobile_no":"01933445566"}', 'password' => bcrypt('landlord'), 'is_setupped' => '1', 'balance' => '1000', 'profile_type' => NULL, 'subscriptionDate' => now(), 'will_expire' => now()->addYears(5), 'email_verified_at' => NULL, 'remember_token' => NULL, 'created_at' => now(), 'updated_at' => now()),
        );

        User::insert($users);

        $user_details = array(
            array('user_id' => '3', 'mykad' => '{"front_image":"uploads\/25\/05-778\/1748665556.jpeg","back_image":"uploads\/25\/05-903\/1748665556.png"}', 'gender' => 'Male', 'birth_date' => '2007-07-08', 'mykad_id' => '252354556', 'lang' => 'en', 'company_info' => '{"company_name":"Tecno Facts","company_ssm_no":"567545"}', 'address_info' => '{"address_one":"Sherpur","address_two":"Dhaka","postal_code":"893467","city":"dhaka","state":"dhaka","country":"Bangladesh"}', 'nominee_info' => NULL, 'emergency_contact' => NULL, 'workplace' => NULL, 'vehicles_info' => NULL, 'created_at' => '2024-12-10 06:17:29', 'updated_at' => '2024-12-10 06:46:36'),
        );

        UserDetail::insert($user_details);
    }
}
