<?php

namespace App\Services;

use Curl;
use App\Helpers\PointCalc;
use App\Models\PointTransaction;
use App\Models\Product;
use App\Models\User;
use Bavix\Wallet\Models\Transaction;
use Illuminate\Support\Facades\Log;

class UserPurchaseProductProcessor
{
    public function pay($user, $transaction, $product)
    {
        $data = [
            'type' => 'purchased',
            'transaction_id' => $transaction->id
        ];
        $user->withdraw($transaction->amount, $data);
        $product->deposit($transaction->amount, $data);
    }

    public function handle(User $user, $transaction, Product $product, $force = 0)
    {
        if ($transaction->confirmed) {
            return;
        }
        /* $object = (object) [
            "amount" => 3000000,
            "description" => "MBVCB.2087406873.013982.apl1810.CT tu 0181001370543 TRUONG KIM TAI toi 12226668888 DO VAN HA (ACB) A Chau GD 013982-060522 10:11:38",
            "type" => "IN"
        ]; */

        $curl = Curl::to(config('bank.endpoint'))->asJsonResponse()->get();
        // $curl->transactions = [$object];
        if ($curl->status == true || $force) {
            $histories = $curl->transactions;
            $history = array_filter($histories, fn($h) => ($h->type == 'IN' && $h->amount == $transaction->amount && preg_match('/apl\d+/i', $h->description, $matches) && strtolower($matches[0]) == strtolower($transaction->meta['description'])));

            try {
                if ((count($history) || $force)) {
                    if ($user->balance < $transaction->amount && $user->confirm($transaction)) {
                        $this->pay($user, $transaction, $product);
                    } else {
                        $user->withdraw($transaction->amount, [
                            'type' => 'purchased',
                            'product_id' => $product->id
                        ]);
                        $this->reject($transaction);
                    }

                    $qty = $transaction->meta['qty'];
                    $calc = PointCalc::getPrice($user, $product, $qty);
                    $amt = $calc['price'];
                    if ($product->is_combo) {
                        $ref1 = round($amt*10/100); // tầng 1: 10%
                        $ref2 = round($amt*20/100); // tầng 2: 20%
                    } else {
                        // tái đơn
                        $ref1 = $qty*5000; // tầng 1: 5000*số lượng
                        $ref2 = $qty*10000; // tầng 2: 10000*số lượng
                    }

                    $purchased_data = ['transaction_id' => $transaction->id, 'type' => 'bonus'];
                    $user->ref_by->deposit($ref1, $purchased_data);

                    if ($user->ref_by->ref_by) {
                        $user->ref_by->ref_by->deposit($ref2, $purchased_data);
                    }

                    // admin tỉnh: x2.2
                    $provincial_admin = $user->province->users()->whereRelation('roles', 'name', '=', 'provincial_admin')->get();
                    $provincial_admin->map(fn($u) => $u->deposit(round($amt*2.2/100), $purchased_data));

                    // admin miền: x1.1
                    $area_admin = User::whereRelation('province', 'area', '=', $user->province->area)->whereRelation('roles', 'name', '=', 'area_admin')->first();
                    $area_admin->deposit(round($amt*1.1/100), $purchased_data);

                    if ($product->is_combo) {
                        $user->addPoints(round($transaction->amount / $transaction->meta['rate']), 'Purchase Combo', ['meta' => ['type' => 'combo-purchased', 'transaction_id' => $transaction->id]]);
                    } else {
                        if ($transaction->meta['point_uses'] > 0) {
                            $user->addPoints(-$transaction->meta['point_uses'], 'Purchase product', ['meta' => ['type' => 'purchased', 'transaction_id' => $transaction->id]]);
                        }
                    }
                    if (($user->level = $user->sales_reaches_lv) > 0) {
                        $user->lv_up = now();
                        $user->save();
                    }
                    $meta = $transaction->meta;
                    $meta['status'] = 'purchased';
                    $transaction->meta = $meta;
                    $transaction->save();
                } else {
                    // Log::error('Không tìm thấy giao dịch. Cần xác nhận bằng tay! ID: ' . $transaction->id);
                }
            } catch (\Exception $e) {
                if ($transaction->confirmed) {
                    $user->wallet->balance -= $transaction->amount;
                    $user->wallet->save();
                }
                $this->reject($transaction);

                Log::error($e->getMessage());
            }
        } else {
            Log::error('Không thể lấy lịch sử giao dịch ngân hàng. WEB API: https://api.web2m.com');
        }
    }

    public function reject($transaction)
    {
        $transaction->update(['confirmed' => 0, 'amount' => 0]);
    }

    public function refund(User $user, $transaction, Product $product, $message)
    {
        try {
            // if re-order => + points
            $rate = $transaction->meta['rate'];
            $point = $transaction->meta['point_uses'];
            if ($product->is_combo) {
                // if combo => - points
                $point = -round($transaction->amount / $rate);
                if (-$point > $user->currentPoints()) {
                    throw new \Exception("Số điểm hiện tại không đủ để hoàn tiền!");
                }
            }
            $user->addPoints($point, 'Refund Transaction');

            $data = [
                'type' => 'refund',
                'status' => 'refunded',
                'transaction_id' => $transaction->id
            ];

            // trừ hoa hồng (bonus)
            $sales = Transaction::where('meta->transaction_id', $transaction->id)->get();
            $sales->map(fn($t) => $t->payable->forceWithdraw($t->amount, $data));

            // refund
            $user->deposit($transaction->amount, $data);
            $product->withdraw($transaction->amount, $data);

            // thêm trạng thái refunded
            $meta = $transaction->meta;
            $meta['status'] = 'refunded';
            $meta['message'] = $message;
            $transaction->meta = $meta;
            $transaction->save();

            $ret['msg'] = 'success';
            $ret['message'] = __('Successfully Refunded');
        } catch (\Exception $e) {
            $ret['msg'] = 'error';
            $ret['message'] = $e->getMessage();
        }
        return $ret;
    }
}
