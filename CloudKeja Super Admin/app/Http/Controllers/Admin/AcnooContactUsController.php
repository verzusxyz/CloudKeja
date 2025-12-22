<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\HasUploader;
use App\Http\Controllers\Controller;
use App\Models\Option;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class AcnooContactUsController extends Controller
{
    use HasUploader;

    public function __construct()
    {
        $this->middleware('permission:contact-us-read')->only('index');
        $this->middleware('permission:contact-us-update')->only('store');
    }

    public function index()
    {
        $contact_us = Option::where('key', 'contact-us')->first();
        return view('admin.settings.contact-us.index', compact('contact_us'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string',
            'button_title' => 'required|string',
            'description' => 'required|string',
        ]);

        $contact_us = Option::where('key', 'contact-us')->first();
        Option::updateOrCreate(
            ['key' => 'contact-us'],
            ['value' => [
                'title' => $request->title,
                'button_title' => $request->button_title,
                'description' => $request->description,
                'image' => $request->image ? $this->upload($request, 'image', $contact_us->value['image'] ?? '') : $contact_us->value['image'],
            ]]
        );

        Cache::forget($contact_us->key);

        return response()->json([
            'message' => 'Contact Us updated successfully',
            'redirect' => route('admin.contact-us.index')
        ]);
    }
}
