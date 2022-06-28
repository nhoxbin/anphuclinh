<?php

namespace App\Http\Controllers;

use App\Helpers\PointCalc;
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
        $u = User::find(1048);
        $u->addPoints(2160, 'Mua combo');
    }
}
