<?php

namespace Database\Seeders;

use App\Models\Amenity;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AmenitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $amenities = [
            [
                'name' => 'Air-Cond',
                'status' => 1
            ],
            [
                'name' => 'Cooking Allowed',
                'status' => 1
            ],
            [
                'name' => 'Near KTM/LRT',
                'status' => 1
            ],
            [
                'name' => 'Washing Machine',
                'status' => 1
            ],
            [
                'name' => 'Internet',
                'status' => 1
            ]
        ];

        Amenity::insert($amenities);
    }
}
