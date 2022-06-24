<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\GiftRequest;
use App\Models\Gift;
use App\Models\GiftTransaction;
use App\Models\Product;

class GiftTransactionController extends Controller
{
    public function store(GiftRequest $request, Product $product)
    {
        $user = $request->user();
        $box_bonus = $user->box_bonus($product->id);
        if (!is_null($box_bonus) && isset($box_bonus[$request->subject])) {
            $total_bonus = $box_bonus[$request->subject];
            $gifts = $user->gifts()->where(['product_id' => $product->id])->pluck('gifts.id');
            $gifts_subject = Gift::where('box', '<=', $total_bonus['total_buy_box'])->whereDoesntHave('transactions', function($q) use ($gifts) {
                $q->whereIn('gift_id', $gifts);
            })->get()->last();

            // ['type' => 'personal|group', 'amount' => <amount>, 'status' => 'pending|rewarded']
            GiftTransaction::insert([
                'user_id' => $user->id,
                'product_id' => $product->id,
                'gift_id' => $gifts_subject->id,
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
