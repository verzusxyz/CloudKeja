<?php

namespace App\Http\Controllers\Api;

use App\Models\Rent;
use App\Models\Review;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AcnooReviewController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'property_id' => 'required|integer|exists:properties,id',
            'review' => 'required|numeric|min:0|max:5',
            'comment' => 'nullable|string',
        ]);
        $tenant_id = auth()->user()->id;
        $rent = Rent::where('property_id', $request->property_id)->first();

        $data = Review::create($request->except('tenant_id') + [
            'rent_id' => $rent->id,
            'tenant_id' => auth()->user()->id
        ]);

        return response()->json([
            'message' => 'Review store successfully',
            'data' => $data
        ]);
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'property_id' => 'required|integer|exists:properties,id',
            'review' => 'required|numeric|min:0|max:5',
            'comment' => 'nullable|string',
        ]);

        $review = Review::findOrFail($id);

        $review->update($request->except('tenant_id') + [
            'tenant_id' => auth()->user()->id
        ]);

        return response()->json([
            'message' => 'Review updated successfully',
            'data' => $review
        ]);
    }
}
