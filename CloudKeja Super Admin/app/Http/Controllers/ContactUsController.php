<?php

namespace App\Http\Controllers;

use App\Models\Message;
use App\Models\Option;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    public function index()
    {
        $contact_us = Option::where('key', 'contact-us')->first();
        return view('web.contact-us.index', compact('contact_us'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|string|max:20',
            'email' => 'required|email|max:255',
            'company_name' => 'nullable|string|max:255',
            'message' => 'required|string',
        ]);

        Message::create($request->all());

        return response()->json([
            'message'   => __('Your Message Submitted successfully'),
            'redirect'  => route('contact-us.index')
        ]);
    }
}
