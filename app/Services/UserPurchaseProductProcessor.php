<?php

namespace App\Services;

use Curl;
use App\Helpers\PointCalc;
use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Log;

class UserPurchaseProductProcessor
{
    public function handle(User $user, $transaction, Product $product, $force = 0)
    {
        /* $object = (object) [
            "amount" => 3000000,
            "description" => "MBVCB.2087406873.013982.apl1810.CT tu 0181001370543 TRUONG KIM TAI toi 12226668888 DO VAN HA (ACB) A Chau GD 013982-060522 10:11:38",
            "type" => "IN"
        ]; */

        $curl = Curl::to(config('bank.endpoint'))->asJsonResponse()->get();
        // $curl->transactions = [$object];
        if ($curl->status == true || $force) {
            $histories = $curl->transactions;
            $history = array_filter($histories, fn($h) => ($h->type == 'IN' && $h->amount == $transaction->amount && str_contains(strtolower($h->description), strtolower($transaction->meta['description']))));

            try {
                if ((count($history) || $force) && $user->confirm($transaction)) {
                    for ($i=0; $i < $transaction->meta['qty']; $i++) {
                        $user->pay($product);
                    }
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
                    $provincial_admin = $user->province->users()->whereRelation('roles', 'name', '=', 'provincial_admin')->get();
                    $provincial_admin->map(fn($u) => $u->deposit(round($amt*2.2/100), $purchased_data));

                    // admin miền: x1.1
                    $area_admin = User::whereRelation('province', 'area', '=', $user->province->area)->whereRelation('roles', 'name', '=', 'area_admin')->first();
                    $area_admin->deposit(round($amt*1.1/100), $purchased_data);

                    if ($product->is_combo) {
                        $user->addPoints(round($transaction->amount / PointCalc::getPoint('current')), 'Purchase Combo', ['type' => 'combo-purchased', 'transaction_id' => $transaction->id]);
                    } else {
                        $user->addPoints(-$calc['max_point_discount'], 'Purchase product', ['type' => 'purchased', 'transaction_id' => $transaction->id]);
                    }
                    if (($user->level = $user->sales_reaches_lv) > 0) {
                        $user->lv_up = now();
                        $user->save();
                    }
                } else {
                    Log::error('Không tìm thấy giao dịch. Cần xác nhận bằng tay! ID: ' . $transaction->id);
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

    public function refund(User $user, $transaction, Product $product)
    {
        $user->addPoints(-round($transaction->amount / PointCalc::getPoint('current')), 'Refund Combo', ['type' => 'combo-purchased', 'transaction_id' => $transaction->id]);

    }
}
