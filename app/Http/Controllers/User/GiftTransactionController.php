<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\GiftRequest;
use App\Models\Gift;
use App\Models\GiftTransaction;
use App\Models\Product;
use Illuminate\Http\Request;

class GiftTransactionController extends Controller
{
    public function index(Request $request, $status = '')
    {
        $per_page = 20;
        $order_by = 'updated_at';
        $ordered  = 'DESC';

        $statuses = [];
        array_push($statuses, $status);
        if (empty($status)) {
            $statuses = ['pending', 'rewarded'];
        }
        $trnxs = $request->user()->gift_transactions()->with('user', 'product', 'gift')
            ->whereIn('meta->status', $statuses)
            ->orderBy($order_by, $ordered)
            ->paginate($per_page);

        $is_page = (empty($status) ? 'all' : $status);
        $pagi = $trnxs->appends(request()->all());
        return view('user.gift-transactions', compact('trnxs', 'is_page', 'pagi'));
    }

    public function store(GiftRequest $request, Product $product)
    {
        $user = $request->user();
        $box_bonus = $user->box_bonus($product->id);
        if (!is_null($box_bonus) && isset($box_bonus[$request->subject])) {
            $total_bonus = $box_bonus[$request->subject];

            // ['type' => 'personal|group', 'amount' => <amount>, 'status' => 'pending|rewarded']
            GiftTransaction::insert([
                'user_id' => $user->id,
                'product_id' => $product->id,
                'gift_id' => $total_bonus['gift_id'],
                'meta' => json_encode([
                    'type' => $request->subject,
                    'status' => 'pending',
                    'amount' => $total_bonus['remain'],
                    'order_info' => $request->only('name', 'phone', 'address', 'notes')
                ]),
                'updated_at' => now(),
                'created_at' => now(),
            ]);
            return response()->success(['title' => 'Thành công!', 'msg' => __('Bonus messages')]);
        }
        return response()->error('Không có quà tặng!');
    }
}
