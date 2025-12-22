<?php

namespace App\Http\Controllers;

use App\Models\Option;

class TermConditionController extends Controller
{
    public function index()
    {
        $term_condition = Option::where('key', 'term-condition')->first();
        return view('web.term-condition.index', compact('term_condition'));
    }
}
