<?php

namespace App\Exports;

use App\Models\Property;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;


class LandlordPropertiesExport implements FromView
{
    public function view(): View
    {
        $properties = Property::with('category:id,name')->where('landlord_id', auth()->id())->latest()->get();
        return view('landlord.properties.excel-csv', [
            'properties' => $properties
        ]);
    }
}
