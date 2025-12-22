<?php

namespace Database\Seeders;

use App\Models\Facility;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FacilitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $facilities = [
            [
                'name' => 'Parking',
                'status' => 1
            ],
            [
                'name' => 'Security',
                'status' => 1
            ],
            [
                'name' => 'Lift',
                'status' => 1
            ],
            [
                'name' => 'Swimming Pool',
                'status' => 1
            ],
            [
                'name' => 'Playground',
                'status' => 1
            ],
            [
                'name' => 'Gymnasium',
                'status' => 1
            ],
            [
                'name' => 'Sauna',
                'status' => 1
            ],
            [
                'name' => 'Barbeque area',
                'status' => 1
            ],
            [
                'name' => 'Minimart',
                'status' => 1
            ],
            [
                'name' => 'Multipurpose hall',
                'status' => 1
            ],
            [
                'name' => 'Club house',
                'status' => 1
            ],
            [
                'name' => 'Tennis Court',
                'status' => 1
            ],
            [
                'name' => 'Squash Court',
                'status' => 1
            ]
        ];
        Facility::insert($facilities);
    }
}
