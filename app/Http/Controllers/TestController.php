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
        $user1 = User::find(1351); // ref1
        $user2 = User::find(1070); // ref2
        $user1->deposit(300000, ['type' => 'bonus', 'transaction_id' => 1042]);
        $user2->deposit(600000, ['type' => 'bonus', 'transaction_id' => 1042]);
    }
}
