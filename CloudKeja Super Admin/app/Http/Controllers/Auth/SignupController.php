<?php

namespace App\Http\Controllers\Auth;

use App\Models\Plan;
use App\Models\User;
use App\Mail\WelcomeMail;
use Illuminate\Http\Request;
use App\Models\PlanSubscribe;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class SignupController extends Controller
{
    public function index()
    {
        return view('auth.signup');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'password' => 'required|min:6|max:100',
            'email' => 'required|email',
        ]);

        if (!env('MAIL_USERNAME')) {
            return response()->json([
                'message' => __('Mail service is not configured. Please contact your administrator.'),
            ], 406);
        }

        DB::beginTransaction();
        try {
            // Find free plan
            $free_plan = Plan::where('subscriptionPrice', '<=', 0)
                ->orWhere('offerPrice', '<=', 0)
                ->first();


            $user = User::where('email', $request->email)->first();
            if ($user && $user->is_setupped) {
                return response()->json([
                    'message' => 'This email is already exists.',
                ], 406);
            }

            $code = random_int(100000, 999999);
            $expire = now()->addMinutes(env('OTP_VISIBILITY_TIME') ?? 3);
            $data = [
                'code' => $code,
                'name' => $request->name,
            ];

            $user = User::updateOrCreate(['email' => $request->email], $request->except('password') + [
                'remember_token' => $code,
                'role' => 'landlord',
                'email_verified_at' => $expire,
                'password' => Hash::make($request->password),
                'is_setupped' => 1
            ]);

            if (env('QUEUE_MAIL')) {
                Mail::to($request->email)->queue(new WelcomeMail($data));
            } else {
                Mail::to($request->email)->send(new WelcomeMail($data));
            }

            // Assign free plan if available
            if ($free_plan) {
                $subscribe = PlanSubscribe::create([
                    'plan_id' => $free_plan->id,
                    'user_id' => $user->id,
                    'duration' => $free_plan->duration,
                    'payment_status' => 'paid'
                ]);

                $user->update([
                    'plan_subscribe_id' => $subscribe->id,
                    'will_expire' => now()->addDays($free_plan->duration),
                    'subscriptionDate' => now(),
                ]);
            }
            DB::commit();

            return response()->json([
                'message' => 'An otp code has been sent to your email. Please check and confirm.',
                'openModal' => true,
                'email' => $request->email,
                'otp_expiration' => now()->diffInSeconds($expire),
            ]);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Something went wrong. Please contact the admin.',
            ], 403);
        }
    }

    public function submitOtp(Request $request)
    {
        $request->validate([
            'otp' => 'required|min:4|max:15',
            'email' => 'required|email',
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user) {
            return response()->json([
                'status' => 404,
                'message' => __('User not found'),
            ], 404);
        }

        if ($user->remember_token == $request->otp) {
            if ($user->email_verified_at > now()) {

                Auth::login($user);

                $user->update([
                    'remember_token' => NULL,
                    'email_verified_at' => now(),
                ]);

                return response()->json([
                    'message' => 'Otp Submit successfully',
                    'redirect' => route('landlord.dashboard')
                ]);
            } else {
                return response()->json([
                    'error' => __('The verification otp has been expired.')
                ], 410);
            }
        } else {
            return response()->json([
                'error' => __('Invalid otp.')
            ], 400);
        }
    }

    public function otpResend(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
        ]);

        $code = random_int(100000, 999999);
        $expire = now()->addSeconds(env('OTP_VISIBILITY_TIME') ?? 10);

        $data = [
            'code' => $code,
            'name' => $request->name,
        ];

        if (env('MAIL_USERNAME')) {
            if (env('QUEUE_MAIL')) {
                Mail::to($request->email)->queue(new WelcomeMail($data));
            } else {
                Mail::to($request->email)->send(new WelcomeMail($data));
            }
        } else {
            return response()->json([
                'message' => __('Mail service is not configured. Please contact your administrator.'),
            ], 406);
        }

        User::where('email', $request->email)->first()->update(['remember_token' => $code, 'email_verified_at' => $expire]);

        return response()->json([
            'message' => 'An otp code has been sent to your email. Please check and confirm.',
            'otp_expiration' => now()->diffInSeconds($expire),
        ]);
    }
}
