<?php

namespace App\Http\Controllers\Api\Auth;

use App\Models\Plan;
use App\Models\User;
use App\Mail\WelcomeMail;
use Illuminate\Http\Request;
use App\Models\PlanSubscribe;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class RegistrationController extends Controller
{
    public function maanRegistration(Request $request): JsonResponse
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'password' => 'required|min:6|max:100',
            'email' => 'required|email',
            'role' => 'required|string'
        ]);

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
                'email_verified_at' => $expire,
                'password' => Hash::make($request->password),
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
                ]);

                $user->update([
                    'plan_subscribe_id' => $subscribe->id,
                    'will_expire' => now()->addDays($free_plan->duration),
                    'subscriptionDate' => now(),
                ]);
            }
            DB::commit();

            sendNotification($user->id, notify_users([$user->id]), admin_url: route('admin.landlords.index', ['id' => $user->id]), admin_msg: __('New landlord account has been created'), landlord_msg: __('You account has been successfully created.'), tenant_msg: __('You account has been successfully created.'));

            return response()->json([
                'message' => 'An otp code has been sent to your email. Please check and confirm.',
            ]);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Something went wrong. Please contact the admin.',
                'error' => $th->getMessage(),
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
                    'message' => 'Logged In successfully!',
                    'id' => $user->id,
                    'role' => $user->role,
                    'token' =>  $user->createToken('createToken')->plainTextToken
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
}
