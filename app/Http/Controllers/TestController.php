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
    public function __invoke(Request $request)
    {
        // $history = array_filter($histories, fn($h) => ($h->type == 'IN' && $h->amount == $transaction->amount && preg_match('/apl\d+/i', $h->description, $matches) && strtolower($matches[0]) == strtolower($transaction->meta['description'])));
        $user = User::where('phone', '0985799122')->first();
        $user->withdraw(3960000, ['type' => 'withdraw', 'ubank_id' => null]);
    }
}
