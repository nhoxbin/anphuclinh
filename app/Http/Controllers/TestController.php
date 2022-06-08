<?php

namespace App\Http\Controllers;

use App\Models\Level;
use App\Models\Product;
use App\Models\User;
use Bavix\Wallet\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TestController extends Controller
{
    public function __invoke()
    {
        $transaction = Transaction::where(['type' => 'deposit', 'confirmed' => 1, 'meta->transaction_id' => 1811])->first();
        dd($transaction);
    }
}
