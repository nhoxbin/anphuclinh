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
        /* $tnx_current = Transaction::find(3303);
        $tnx = $tnx_current->payable->reward_amount($tnx_current);
        dd($tnx); */
        $tnxs = Transaction::where([
            'type' => 'deposit',
            'confirmed' => 1,
            'meta->type' => 'purchase'
        ])->where('meta', 'NOT LIKE', 'status');
        dd($tnxs);
        /* foreach ($tnxs as $tnx) {
            $meta = $tnx->meta;
            $meta['status'] = 'purchased';
            $tnx->meta = $meta;
            $tnx->save();
        } */
    }
}
