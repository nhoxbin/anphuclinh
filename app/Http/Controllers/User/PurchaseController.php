<?php

namespace App\Http\Controllers\User;

use App\Helpers\PointCalc;
use App\Http\Controllers\Controller;
use App\Http\Requests\PurchaseRequest;
use App\Jobs\ProcessUserPurchase;
use App\Models\Product;

class PurchaseController extends Controller
{
    public function __invoke(PurchaseRequest $request, Product $product, $transaction)
    {
        $validated = $request->validated();
        $user = $request->user();
        $transaction = $user->transactions()->find($transaction);
        if (is_null($transaction) || ($transaction->amount != 0 && !$transaction->confirmed)) {
            return response()->json(['success' => false, 'msg' => 'Bạn đang có 1 đơn hàng chưa được xử lý, vui lòng đợi xác nhận trước khi mua sản phẩm khác!']);
        }
        $validated['product_id'] = $transaction->meta['product_id'];
        $validated['type'] = $transaction->meta['type'];
        $validated['description'] = 'apl' . $transaction->id;
        $transaction->update([
            'amount' => PointCalc::getPrice($user, $product, $validated['qty'])['price'],
            'meta' => $validated
        ]);

        ProcessUserPurchase::dispatch($user, $transaction, $product)->onQueue('purchases');
        return response()->json(['success' => true, 'msg' => 'Hệ thống sẽ tự động xác nhận nếu thanh toán hợp lệ.']);
    }
}
