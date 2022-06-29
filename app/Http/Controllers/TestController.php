<?php

namespace App\Http\Controllers;

use App\Helpers\PointCalc;
use App\Models\Level;
use App\Models\Product;
use App\Models\User;
use Bavix\Wallet\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TestController extends Controller
{
    public function __invoke(Request $request)
    {
        $user = $request->user();
        $has_combo = $user->transactions()->where([
            'confirmed' => 1,
            'meta->type' => 'combo',
            'meta->status' => 'purchased'
        ])->first();

        // Tổng doanh số
        $data = [
            'payable_type' => 'App\\Models\\User',
            'confirmed' => 1,
            'meta->status' => 'purchased',
            'meta->type' => 'reorder',
        ];

        $data['type'] = 'deposit';
        $transaction = Transaction::query();
        $transaction->whereIn('payable_id', $user->group_ids)->where($data);
        $transaction->where('meta->point_uses', 0);
        $transaction->where('updated_at', '>=', $has_combo->updated_at->toDateTimeString());
        $transaction->whereYear('created_at', now()->year);
        dd($transaction->get());
    }
}
