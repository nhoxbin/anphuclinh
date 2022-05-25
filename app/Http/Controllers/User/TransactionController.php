<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    public function __invoke(Request $request)
    {
        $transactions = $request->user()->transactions;
        return view('user.history.index', compact('transactions'));
    }
}
