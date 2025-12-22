<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PropertyDetail extends Model
{
    use HasFactory;

    protected  $fillable= ['property_id','furnishing','facilities','parking_lot', 'amenities', 'full_name', 'phone', 'email' , 'living_image' , 'bedroom_image' , 'kitchen_image' , 'bathroom_image' , 'floorplan_image', 'residential_type', 'property_type' , 'property_info' , 'tenant_preference'];



    protected $casts = [
        'cover_image' => 'json',
        'tenant_preference' => 'json',
        'property_info' => 'json',
        'facilities' => 'json',
        'amenities' => 'json',
    ];

    public function amenities()
    {
    return $this->belongsToMany(Amenity::class, 'property_amenity', 'property_detail_id', 'amenity_id');
    }

    public function property(){
        return $this->belongsTo(Property::class);
    }

}

