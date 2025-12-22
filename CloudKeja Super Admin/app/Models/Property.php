<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Property extends Model
{
    use HasFactory;

    protected  $fillable= ['category_id','landlord_id', 'house_type_id',  'room_info','building_name', 'utility_deposit', 'security_deposit', 'cover_image', 'status', 'rent_info', 'address_info', 'meta'];

    public function landlord()
    {
        return $this->belongsTo(User::class, 'landlord_id');
    }

    public function propertyDetail()
    {
        return $this->hasOne(PropertyDetail::class, 'property_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }


    public function house_type()
    {
        return $this->belongsTo(HouseType::class, 'house_type_id');
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function favorite()
    {
        return $this->hasOne(Favorite::class);
    }

    public function rent()
    {
        return $this->hasOne(Rent::class);
    }

    public function maintenances()
    {
        return $this->hasMany(Maintenance::class);
    }

    public static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $id = Property::max('id') + 1;
            $model->puid = str_pad($id, 6, '0', STR_PAD_LEFT);
        });
    }

    protected $casts = [
        "category_id" => "integer",
        "landlord_id" => "integer",
        "house_type_id" => "integer",
        "user_id" => "integer",
        "status" => "integer",
        "utility_deposit" => "double",
        "security_deposit" => "double",
        'cover_image' => 'json',
        'room_info' => 'json',
        'rent_info' => 'json',
        'address_info' => 'json',
        'property_info' => 'json',
        'meta' => 'json',
    ];
}
