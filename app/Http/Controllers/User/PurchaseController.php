<?php

namespace App\Http\Controllers\User;

use App\Helpers\PointCalc;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;
use App\Jobs\ProcessUserPurchasePackage;
use App\Jobs\ProcessUserPurchaseProduct;
use App\Models\Package;
use App\Models\Product;
use Bavix\Wallet\Models\Transaction;
use Illuminate\Http\Request;

class PurchaseController extends Controller
{
    public function product(ProductRequest $request, Product $product, Transaction $transaction)
    {
        $validated = $request->validated();
        if (is_null($transaction) || ($transaction->amount != 0 && !$transaction->confirmed)) {
            return response()->error('Bạn đang có 1 đơn hàng chưa được xử lý, vui lòng đợi xác nhận trước khi mua sản phẩm khác!');
        }
        $user = $request->user();

        $calc = PointCalc::getPrice($user, $product, $validated['qty'], $request->is_uses_point);
        $meta = $transaction->meta;
        $meta['description'] = 'apl' . $transaction->id;
        $meta['rate'] = PointCalc::getPoint('current');
        $meta['point_uses'] = $calc['max_point_discount'];
        $transaction->update([
            'amount' => $calc['price'],
            'meta' => array_merge($meta, $validated)
        ]);

        ProcessUserPurchaseProduct::dispatch($user, $transaction, $product)->onQueue('purchases');
        return response()->success(['title' => 'Thành công!', 'msg' => 'Hệ thống sẽ tự động xác nhận nếu thanh toán hợp lệ.']);
    }

    public function package(Request $request, Package $package, Transaction $transaction)
    {
        if (is_null($transaction) || ($transaction->amount != 0 && !$transaction->confirmed)) {
            return response()->error('Bạn đang có 1 đơn hàng chưa được xử lý, vui lòng đợi xác nhận trước khi mua sản phẩm khác!');
        }
        $user = $request->user();

        $meta = $transaction->meta;
        $meta['description'] = 'apl' . $transaction->id;
        $transaction->update([
            'amount' => $package->amount,
            'meta' => $meta
        ]);

        ProcessUserPurchasePackage::dispatch($user, $transaction, $package)->onQueue('purchases');
        return response()->success(['title' => 'Thành công!', 'msg' => 'Hệ thống sẽ tự động xác nhận nếu thanh toán hợp lệ.']);
    }
}
