<?php

namespace App\Exports;

use App\Models\Property;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class AdminPropertiesExport implements FromView
{
    public function view(): View
    {
        $properties = Property::with(['category:id,name', 'landlord:id,name', 'propertyDetail:property_id,property_info'])->latest()->get();
        return view('admin.properties.excel-csv', [
            'properties' => $properties
        ]);
    }
}
