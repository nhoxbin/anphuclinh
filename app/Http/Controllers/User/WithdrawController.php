<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class WithdrawController extends Controller
{
    public function store(Request $request)
    {
        try {
            if ($request->amount == 0) {
                throw new \Exception('Số tiền phải lớn hơn 0');
            }
            $request->user()->withdraw($request->amount, ['type' => 'withdraw', 'ubank_id' => $request->id], 0);
            return response()->success(['title' => 'Thành công!', 'msg' => 'Yêu cầu rút tiền đã được gửi!']);
        } catch (\Exception $e) {
            return response()->error(__($e->getMessage()));
        }
    }
}
