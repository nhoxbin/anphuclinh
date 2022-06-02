<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class WithdrawController extends Controller
{
    public function store(Request $request)
    {
        $user = $request->user();
        try {
            $user->withdraw($request->amount, null, 0);
            return response()->success(['title' => 'Thành công!', 'msg' => 'Yêu cầu rút tiền đã được gửi!']);
        } catch (\Exception $e) {
            return response()->error($e->getMessage());
        }
    }
}
