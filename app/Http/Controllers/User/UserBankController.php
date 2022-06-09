<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\UBankRequest;
use App\Models\UserBank;

class UserBankController extends Controller
{
    public function index()
    {
        $ubanks = auth()->user()->banks;
        return response()->success($ubanks);
    }

    public function store(UBankRequest $request)
    {
        $ub = $request->user()->banks()->create($request->validated());
        return response()->success(['title' => 'Lưu thành công.', 'msg' => 'Lưu tài khoản ngân hàng thành công.', 'ubank' => $ub]);
    }

    public function edit(UserBank $ubank)
    {
        return response()->json($ubank);
    }

    public function update(UBankRequest $request, UserBank $ubank)
    {
        $ubank->update($request->validated());

        return response()->success(['title' => 'Cập nhật thành công.', 'msg' => 'Cập nhật tài khoản ngân hàng thành công.']);
    }

    public function destroy(UserBank $ubank)
    {
        $ubank->delete();
        return response()->success(['title' => 'Thành công', 'msg' => 'Xóa tài khoản ngân hàng thành công.']);
    }
}
