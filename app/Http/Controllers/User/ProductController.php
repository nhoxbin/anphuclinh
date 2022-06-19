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
        $user = auth()->user()->load(['ref_by']);
        $type = $product->is_combo ? 'combo' : 'reorder';
        $transaction = $user->transactions()->where([
            'confirmed' => 0,
            'type' => 'deposit',
            'meta->product_id' => $product->id,
            'meta->type' => $type
        ])->first();
        if (is_null($transaction)) {
            $transaction = $user->deposit(0, ['product_id' => $product->id, 'type' => $type], false);
        }

        $provinces = Province::all();
        $bank = json_encode(config('bank'));
        $info = $user->transactions()->where(['confirmed' => 1, 'meta->status' => 'purchased'])->where('meta->address', '<>', null)->latest()->first();
        $meta = !is_null($info) ? json_encode($info->meta) : '{}';
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
