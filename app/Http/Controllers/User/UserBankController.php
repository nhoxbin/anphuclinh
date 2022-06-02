<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\BankRequest;
use App\Models\Bank;

class UserBankController extends Controller
{
    public function banks()
    {
        return view('user.ubank.index');
    }

    public function index()
    {
        $ubanks = auth()->user()->banks;
        return response()->success($ubanks);
    }

    public function store(BankRequest $request)
    {
        $request->user()->banks()->create($request->validated());

        return response()->success(['title' => 'Lưu thành công.', 'msg' => 'Lưu tài khoản ngân hàng thành công.']);
    }

    public function edit(Bank $bank)
    {
        return response()->json($bank);
    }

    public function update(BankRequest $request, Bank $bank)
    {
        $bank->update($request->validated());

        return response()->success(['title' => 'Cập nhật thành công.', 'msg' => 'Cập nhật tài khoản ngân hàng thành công.']);
    }

    public function destroy(Bank $bank)
    {
        $bank->delete();

        return response()->json(['success' => 'Xóa tài khoản ngân hàng thành công.']);
    }
}
