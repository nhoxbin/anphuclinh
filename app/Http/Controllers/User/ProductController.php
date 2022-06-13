<?php

namespace App\Http\Controllers\User;

use App\Helpers\PointCalc;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Province;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function priceCalc(Request $request, Product $product)
    {
        return json_encode(PointCalc::getPrice($request->user(), $product, $request->amount));
    }

    public function show(Product $product)
    {
        $user = auth()->user();
        $transaction = $user->transactions()->where([
            'confirmed' => 0,
            'type' => 'deposit',
            'meta->product_id' => $product->id,
            'meta->type' => 'purchase'
        ])->first();
        if (is_null($transaction)) {
            $transaction = $user->deposit(0, ['product_id' => $product->id, 'type' => 'purchase'], false);
        }

        $provinces = Province::all();
        $bank = json_encode(config('bank'));
        $info = $user->transactions()->where(['type' => 'deposit', 'confirmed' => 1, 'meta->type' => 'purchase'])->where('meta->address', '<>', null)->latest()->first();
        $meta = !is_null($info) ? json_encode($info->meta) : collect([]);
        return view('user.purchase.show', compact(
            'product',
            'provinces',
            'user',
            'meta',
            'bank',
            'transaction'
        ));
    }
}
