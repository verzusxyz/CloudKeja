<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(array(
            PermissionSeeder::class,
            CurrencySeeder::class,
            GatewaySeeder::class,
            UserSeeder::class,
            PlanSeeder::class,
            PlanSubscribeSeeder::class,
            CategorySeeder::class,
            HouseTypeSeeder::class,
            FacilitySeeder::class,
            AmenitySeeder::class,
            PropertySeeder::class,
            PropertyDetailSeeder::class,
            WithdrawMethodSeeder::class,
            OptionTableSeeder::class
        ));
    }
}
