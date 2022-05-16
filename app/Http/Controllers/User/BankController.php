<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\BankRequest;
use App\Models\Bank;

class BankController extends Controller
{
    public function index()
    {
        $banks = Bank::all();

        return view('user.bank.index', compact('banks'));
    }

    public function create()
    {
        return view('user.bank.edit');
    }

    public function store(BankRequest $request)
    {
        $bank = Bank::create($request->validated());

        return back()->with(['success' => 'Lưu tài khoản ngân hàng thành công.']);
    }

    public function edit(Bank $bank)
    {
        return view('user.bank.edit', compact('bank'));
    }

    public function update(BankRequest $request, Bank $bank)
    {
        $bank->update($request->validated());

        return back()->with(['success' => 'Lưu tài khoản ngân hàng thành công.']);
    }

    public function destroy(Bank $bank)
    {
        $bank->delete();

        return back()->with(['success' => 'Xóa tài khoản ngân hàng thành công.']);
    }
}
