<?php

namespace App\Http\Controllers;

use App\Helpers\PointCalc;
use App\Models\Level;
use App\Models\Product;
use App\Models\User;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TestController extends Controller
{
    public function __invoke(Request $request)
    {
        Transaction::where([
            'payable_type' => 'App\\Models\\User',
            'type' => 'deposit'
        ])->where('meta', 'NOT LIKE', '%product_id%')
        ->where('meta', 'LIKE', '%Product #1%')->update([
            'meta' => [
                'type' => 'combo',
                'status' => 'purchased',
                'rate' => 2778,
                'product_id' => 1,
                'qty' => 1
            ]
        ]);
    }
}
