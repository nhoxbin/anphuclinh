<?php

namespace App\Services;

use Curl;
use App\Helpers\PointCalc;
use App\Models\Product;
use App\Models\User;
use Bavix\Wallet\Models\Transaction;
use Illuminate\Support\Facades\Log;

class UserPurchaseProcessor
{
    public function handle(User $user, $transaction, Product $product)
    {
        $curl = Curl::to(config('bank.endpoint'))->asJsonResponse()->get();

        if ($curl->status == true) {
            $histories = $curl->transactions;
            $history = array_filter($histories, fn($h) => ($h->type == 'IN' && $h->amount == $transaction->amount && str_contains($h->description, $transaction->meta['description'])));

            $user->confirm($transaction);
            if (count($history) && $user->safePay($product)) {
                $purchased_data = ['transaction_id' => $transaction->id, 'type' => 'bonus'];

                $calc = PointCalc::getPrice($user, $product, $transaction->meta['qty']);
                $amt = $calc['price'];
                // tầng 1: 10%
                $user->ref_by()->first()->deposit(round($amt*10/100), $purchased_data);

                // tầng 2: 20%
                if ($user->ref_by->ref_by) {
                    $user->ref_by->ref_by()->first()->deposit(round($amt*20/100), $purchased_data);
                }

                // admin tỉnh: x2.2
                $provincial_admin = $user->province->users()->whereRelation('roles', 'name', '=', 'provincial_admin')->first();
                $provincial_admin->deposit(round($amt*2.2/100), $purchased_data);

                // admin miền: x1.1
                $area_admin = User::where('province_code', null)->whereRelation('roles', 'name', '=', 'area_admin')->first();
                $area_admin->deposit(round($amt*1.1/100), $purchased_data);

                if ($product->is_combo) {
                    $user->addPoints(round($transaction->amount / PointCalc::getPoint('current')), 'Purchase Combo', ['type' => 'bonus', 'transaction_id' => $transaction->id]);
                } else {
                    $user->addPoints(-$calc['max_point_discount'], 'Purchase product', ['type' => 'purchase', 'transaction_id' => $transaction->id]);
                }
            } else {
                $user->wallet->balance -= $transaction->amount;
                $user->wallet->save();
                $transaction->confirmed = 0;
                $transaction->amount = 0;
                $transaction->save();

                Log::error('Không thể giao dịch!');
            }
        } else {
            Log::error('Không thể lấy lịch sử giao dịch ngân hàng. WEB API: https://api.web2m.com');
        }
    }
}
