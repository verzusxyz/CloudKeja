<?php

namespace App\Http\Controllers\Admin;

use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Models\PlanSubscribe;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;
use App\Exports\AdminSubscriptionReportExport;
use Illuminate\Support\Carbon;

class AcnooSubscriptionReportController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:subscriptions-read')->only('index');
        $this->middleware('permission:subscriptions-update')->only('reject', 'paid');
    }

    public function index()
    {
        $subscriptions = PlanSubscribe::with(['user:id,name,will_expire', 'plan:id,subscriptionName', 'gateway:id,name'])->latest()->paginate(10);
        return view('admin.reports.subscriptions.index', compact('subscriptions'));
    }

    public function acnooFilter(Request $request)
    {

        $subscriptionQuery = PlanSubscribe::with(['user:id,name', 'plan:id,subscriptionName', 'gateway:id,name']);

        if ($request->filled('from_date') && $request->filled('to_date')) {
            $startDate = Carbon::parse($request->from_date)->format('Y-m-d');
            $endDate = Carbon::parse($request->to_date)->format('Y-m-d');

            $subscriptionQuery->whereDate('created_at', '>=', $startDate)
                ->whereDate('created_at', '<=', $endDate);
        }

        if ($request->filled('search')) {
            $subscriptionQuery->where(function ($q) use ($request) {
                $q->where('payment_status', 'like', '%' . $request->search . '%')
                    ->orWhereHas('user', function ($q) use ($request) {
                        $q->where('name', 'like', '%' . $request->search . '%');
                    })
                    ->orWhereHas('plan', function ($q) use ($request) {
                        $q->where('subscriptionName', 'like', '%' . $request->search . '%');
                    })
                    ->orWhereHas('gateway', function ($q) use ($request) {
                        $q->where('name', 'like', '%' . $request->search . '%');
                    });
            });
        }

        $perPage = $request->input('per_page', 20);
        $subscriptions = $subscriptionQuery->latest()->paginate($perPage);

        if ($request->ajax()) {
            return response()->json([
                'data' => view('admin.reports.subscriptions.datas', compact('subscriptions'))->render()
            ]);
        }

        return redirect(url()->previous());
    }

    public function reject(Request $request, string $id)
    {

        $request->validate([
            'notes' => 'required|string|max:255',
        ]);

        $reject = PlanSubscribe::findOrFail($id);

        if ($reject) {

            $reject->update([
                'payment_status' => 'rejected',
                'notes' => $request->notes,
            ]);

            return response()->json([
                'message' => 'Subscription rejected successfully',
                'redirect' => route('admin.subscription-reports.index'),
            ]);
        } else {
            return response()->json(['message' => 'request not found'], 404);
        }
    }

    public function paid(Request $request, string $id)
    {

        $request->validate([
            'notes' => 'required|string|max:255',
        ]);

        $subscribe = PlanSubscribe::findOrFail($id);

        if ($subscribe) {
            DB::beginTransaction();
            try {

                $subscribe->update([
                    'payment_status' => 'paid',
                    'notes' => $request->notes,
                ]);

                $subscribe->user()->update([
                    'subscriptionDate' => now(),
                    'plan_subscribe_id' => $subscribe->id,
                    'will_expire' => now()->addDays($subscribe->plan->duration ?? ''),
                ]);

                Transaction::create([
                    'paid_by' => $subscribe->user_id,
                    'received_by' => auth()->id(),
                    'gateway_id' => $subscribe->gateway_id,
                    'plan_subscribe_id' => $subscribe->id,
                    'date' => today(),
                    'amount' => $subscribe->price,
                    'type' => 'credit',
                    'payment_method' => $subscribe->gateway->name ?? null,
                    'payment_type' => 'subscription',
                ]);

                DB::commit();

                Cache::forget('plan-data-' . $subscribe->user_id);

                sendNotification($subscribe->id, notify_users([$subscribe->user->id]), admin_url: route('admin.subscription-reports.index', ['id' => $subscribe->id]),  admin_msg: __('A new subscription has been activated.'), landlord_msg: __('Your subscription has been successfully activated. Enjoy the benefits!'));

                return response()->json([
                    'message' => 'Subscription paid successfully',
                    'redirect' => route('admin.subscription-reports.index'),
                ]);
            } catch (\Exception $exception) {
                DB::rollBack();
                return response()->json(['message' => 'Something Went wrong!'], 404);
            }
        } else {
            return response()->json(['message' => 'request not found'], 404);
        }
    }

    public function file_download(string $id)
    {
        $subscription = PlanSubscribe::findOrFail($id);

        // Check if attachment exists in notes
        $filePath = $subscription->notes['attachment'] ?? null;

        if (empty($filePath) || !Storage::exists($filePath)) {
            return redirect()->back()->with('error', 'File not found');
        }

        return Storage::download($filePath);
    }

    public function getInvoice(string $invoice_id)
    {
        $subscriber = PlanSubscribe::with(['plan:id,subscriptionName', 'gateway:id,name', 'user:id,name,email', 'user.user_details:user_id,address_info'])->findOrFail($invoice_id);
        return view('admin.reports.subscriptions.invoice', compact('subscriber'));
    }


    public function exportExcel()
    {
        return Excel::download(new AdminSubscriptionReportExport, 'subscription-reports.xlsx');
    }

    public function exportCsv()
    {
        return Excel::download(new AdminSubscriptionReportExport, 'subscription-reports.csv');
    }
}
