<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Doctrine\Inflector\Rules\Word;
use Illuminate\Http\Request;

class WithdrawController extends Controller
{
    public function store(Request $request)
    {
        try {
            $user = $request->user();
            if ($request->amount == 0) {
                throw new \Exception('Số tiền phải lớn hơn 0');
            } else {
                $is_withdraw = $user->transactions()->where([
                    'type' => 'withdraw',
                    'confirmed' => 0,
                    'meta->type' => 'withdraw'
                ])->where('amount', '<>', 0)->exists();
                if ($is_withdraw) {
                    throw new \Exception('You have 1 pending order, cannot withdraw now!');
                } else {
                    $withdraw = $user->transactions()->where([
                        'type' => 'withdraw',
                        'amount' => 0,
                        'confirmed' => 0,
                        'meta->type' => 'withdraw'
                    ])->first();
                    if (!is_null($withdraw)) {
                        $withdraw->update(['amount' => $request->amount]);
                    } else {
                        $user->withdraw($request->amount, ['type' => 'withdraw', 'status' => 'pending', 'ubank_id' => $request->id], 0);
                    }
                }
            }
            return response()->success(['title' => 'Thành công!', 'msg' => 'Yêu cầu rút tiền đã được gửi!']);
        } catch (\Exception $e) {
            return response()->error(__($e->getMessage()));
        }
    }
}
