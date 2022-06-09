<?php

namespace App\Http\Controllers\User;

use App\Helpers\PointCalc;
use App\Http\Controllers\Controller;
use App\Models\Package;
use Illuminate\Http\Request;

class PackageController extends Controller
{
    public function show(Request $request, Package $package)
    {
        $user = $request->user();
        $rate = PointCalc::getPoint('current');
        $transaction = $user->transactions()->where([
            'confirmed' => 0,
            'type' => 'deposit',
            'meta->package_id' => $package->id,
            'meta->type' => 'package'
        ])->first();
        if (is_null($transaction)) {
            $transaction = $user->deposit(0, ['package_id' => $package->id, 'type' => 'package'], false);
        }
        return view('user.package.index', compact('transaction', 'package', 'rate'));
    }
}
