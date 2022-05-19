<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\PurchaseRequest;
use App\Models\Product;

class PurchaseController extends Controller
{
    public function show(Product $product)
    {
        return view('user.purchase.show', compact('product'));
    }

    public function store(PurchaseRequest $request, Product $product)
    {
        $user = $request->auth()->user();
        if (!is_null($user->transactions()->where('confirm', 0)->first())) {
            return back()->withErrors(['msg' => 'Bạn đang có 1 đơn hàng chưa được xử lý, vui lòng đợi xác nhận trước khi mua sản phẩm khác!']);
        }
        $user->deposit($product->price, ['product_id' => $product->id, ...$request->validated()], false);
        return view('user.dashboard');
    }
}
