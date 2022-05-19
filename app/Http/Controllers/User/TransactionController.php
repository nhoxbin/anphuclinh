<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    public function __invoke()
    {
        $transactions = Transaction::all();
        return view('user.history.index', compact('transactions'));
    }
}
