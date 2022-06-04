<?php

namespace App\Services;

use Curl;
use App\Helpers\PointCalc;
use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Log;

class UserPurchaseProductProcessor
{
    public function handle(User $user, $transaction, Product $product)
    {
        /* $object = (object) [
            "transactionID" => 9668,
            "amount" => 3000000,
            "description" => "apl1116 FT22134660080706 GD 311270-051422 16:25:18",
            "transactionDate" => "16/05/2022",
            "type" => "IN"
        ]; */

        $curl = Curl::to(config('bank.endpoint'))->asJsonResponse()->get();
        // $curl->transactions = [$object];
        if ($curl->status == true) {
            $histories = $curl->transactions;
            $history = array_filter($histories, fn($h) => ($h->type == 'IN' && $h->amount == $transaction->amount && str_contains(strtolower($h->description), strtolower($transaction->meta['description']))));

            try {
                if (count($history)) {
                    $user->confirm($transaction);
                    $user->pay($product);
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
                    $area_admin = User::whereRelation('province', 'area', '=', $user->province->area)->whereRelation('roles', 'name', '=', 'area_admin')->first();
                    $area_admin->deposit(round($amt*1.1/100), $purchased_data);

                    if ($product->is_combo) {
                        $user->addPoints(round($transaction->amount / PointCalc::getPoint('current')), 'Purchase Combo', ['type' => 'combo-purchased', 'transaction_id' => $transaction->id]);
                    } else {
                        $user->addPoints(-$calc['max_point_discount'], 'Purchase product', ['type' => 'purchased', 'transaction_id' => $transaction->id]);
                    }
                } else {
                    Log::error('Không tìm thấy giao dịch! ID: ' . $transaction->id);
                }
            } catch (\Exception $e) {
                $user->wallet->balance -= $transaction->amount;
                $user->wallet->save();
                $transaction->confirmed = 0;
                $transaction->amount = 0;
                $transaction->save();

                Log::error($e->getMessage());
            }
        } else {
            Log::error('Không thể lấy lịch sử giao dịch ngân hàng. WEB API: https://api.web2m.com');
        }
    }
}
