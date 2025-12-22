<?php

namespace Database\Seeders;

use App\Models\Property;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PropertySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $properties = array(
            array('id' => '1','category_id' => '1','puid' => '000001','landlord_id' => '3','house_type_id' => NULL,'building_name' => 'Shapla Manson','utility_deposit' => '36','security_deposit' => '49','cover_image' => '["uploads\\/25\\/08\\/1756375849_68b02b2932d4e.svg","uploads\\/25\\/08\\/1756375937_68b02b8171a8b.jfif","uploads\\/25\\/08\\/1756375937_68b02b8177ec5.jfif","uploads\\/25\\/08\\/1756375937_68b02b81785da.jfif","uploads\\/25\\/08\\/1756375937_68b02b8178bc3.jfif"]','room_info' => '{"floor_rang":"Low","bedroom":"10","bathroom":"10"}','status' => '1','rent_info' => '{"completion_year":"2025","monthly_rent":"30000","rental_period":"2.5 Years"}','address_info' => '{"address":"New York","country":"Cyprus","city":"Ny","state":"new york","postcode":"1756"}','meta' => NULL,'created_at' => '2025-08-28 16:10:49','updated_at' => '2025-08-28 16:12:17')
        );

        Property::insert($properties);
    }
}
