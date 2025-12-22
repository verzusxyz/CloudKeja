<?php

namespace App\Http\Controllers;

use App\Models\Option;

class PolicyPolicyController extends Controller
{
    public function index()
    {
        $privacy_policy = Option::where('key', 'privacy-policy')->first();
        return view('web.privacy-policy.index', compact('privacy_policy'));
    }
}
