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
        $tnxs = Transaction::where('type', 'withdraw')->where('meta->type', '<>', 'refund')->where('meta->transaction_id', '<>', null)->get();
        foreach ($tnxs as $tnx) {
            $trans = Transaction::where('id', $tnx->meta['transaction_id'])->first();
            if (is_null($trans)) {
                dump(['null', $trans]);
            } else {
                dump(['notnull', $trans]);
            }
        }
    }
}
