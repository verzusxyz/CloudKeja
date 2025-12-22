<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;


class LoginController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password], $request->filled('remember'))) {

            $request->session()->regenerate();

            $user = auth()->user();

            if ($user->role === 'tenant') {
                Auth::logout();
                return response()->json([
                    'message' => __('You cannot log in as a tenant.'),
                ], 403);
            }

            $redirect_url = url('/');

            if ($user->role === 'admin' || $user->role === 'superadmin') {
                $role = Role::where('name', $user->role)->first();

                if ($role && $role->permissions->isNotEmpty()) {
                    $first_permission = $role->permissions->pluck('name')->first();
                    $page = explode('-', $first_permission);
                    $redirect_url = route('admin.' . $page[0]);
                }
            } elseif ($user->role === 'landlord') {
                $redirect_url = route('landlord.dashboard');
            }

            return response()->json([
                'message' => __('Logged In Successfully'),
                'remember' => $request->filled('remember') ? 1 : 0,
                'redirect' => $redirect_url,
            ]);
        }

        return response()->json([
            'message' => __('Invalid Email or Password!'),
        ], 401);
    }


    public function logout()
    {
        Session::forget('Success');
        Auth::logout();

        return redirect('/');
    }
}
