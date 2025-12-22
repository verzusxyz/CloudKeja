<?php

namespace Database\Seeders;

use App\Models\PropertyDetail;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PropertyDetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $property_details = array(
            array('id' => '1', 'property_id' => '1', 'furnishing' => 'Fully Furnished', 'facilities' => '["1"]', 'parking_lot' => '2', 'amenities' => '["1"]', 'full_name' => 'Alifa Islam', 'phone' => '01888678733', 'email' => 'alifa@gmail.com', 'living_image' => NULL, 'bedroom_image' => NULL, 'kitchen_image' => NULL, 'bathroom_image' => NULL, 'floorplan_image' => NULL, 'residential_type' => 'Condo/Services residence/Penthouse', 'property_type' => 'House Space', 'property_info' => '{"property_description":"Spacious apartment","property_title":"Luxury Apartment","land_size":"2000","unit_number":"101","property_size":"1200","lot_number":"5B"}', 'tenant_preference' => NULL, 'created_at' => '2024-12-23 03:05:19', 'updated_at' => '2024-12-23 03:05:19'),
        );

        PropertyDetail::insert($property_details);
    }
}
