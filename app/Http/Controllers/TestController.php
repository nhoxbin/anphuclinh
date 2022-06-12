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
        $user = User::find($request->user);
        $user->withdraw($request->amount, ['type' => 'withdraw', 'ubank_id' => $request->id]);
    }
}
