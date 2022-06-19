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
        // Transaction::where('meta->type', 'purchased')->update(['meta->type' => 'purchase', 'meta->status' => 'purchased']);
        // Transaction::where('meta->title', 'Gói Combo 3tr')->update(['meta->type' => 'combo', 'meta->status' => 'purchased']);
        // Transaction::where(['meta->type' => 'purchase', 'meta->product_id' => 1, 'confirmed' => 1])->update(['meta->type' => 'combo', 'meta->status' => 'purchased']);
        // Transaction::where(['meta->type' => 'purchase', 'confirmed' => 1])->where('meta->product_id', '<>', 1)->update(['meta->type' => 'reorder', 'meta->status' => 'purchased']);
        // Transaction::where(['meta->type' => 'purchase', 'confirmed' => 0])->update(['meta->status' => 'pending']);
        // Transaction::where(['type' => 'withdraw', 'meta->type' => 'withdraw', 'confirmed' => 0])->delete();
        // Transaction::where(['type' => 'withdraw', 'meta->type' => 'withdraw', 'confirmed' => 1])->update(['meta->status' => 'approved']);
        // Transaction::where(['confirmed' => 0])->where('amount', '<>', 0)->update(['meta->status' => 'pending']);
        // Transaction::where(['meta->type' => 'purchase', 'confirmed' => 0])->where('meta->product_id', '<>', 1)->update(['meta->type' => 'reorder', 'meta->status' => 'pending']);
    }
}
