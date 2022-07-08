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
    public function pay($user, $amount, $product, $tnx_id, $force)
    {
        $data = ['type' => $product->is_combo ? 'combo' : 'reorder', 'transaction_id' => $tnx_id];
        $data['status'] = 'purchased';
        $data['is_auto'] = !$force;
        $user->withdraw($amount, $data);
    }

    public function find_ref_by_reaches_lv($user)
    {
        if (($user->level = $user->sales_reaches_lv) > 0) {
            $user->lv_up = now();
            $user->save();
        }
        if ($user->ref_by) {
            $this->find_ref_by_reaches_lv($user->ref_by);
        }
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
        if (isset($curl->status) && $curl->status == true || $force) {
            $histories = $curl->transactions;
            $history = array_filter($histories, fn($h) => ($h->type == 'IN' && $h->amount == $transaction->amount && preg_match('/apl\d+/i', $h->description, $matches) && strtolower($matches[0]) == strtolower($transaction->meta['description'])));

            try {
                if (count($history) || $force) {
                    $amount = $transaction->amount;
                    $user->confirm($transaction);
                    if (!count($history) && $user->balance >= $transaction->amount*2) {
                        $amount = $transaction->amount*2;
                    }
                    // throw new \Exception('Đảm bảo khách hàng đã chuyển tiền hoặc số tiền trong tài khoản của khách hàng lớn hơn số tiền giao dịch!');
                    $this->pay($user, $amount, $product, $transaction->id, $force);

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
                        $user->addPoints(round($transaction->amount / $transaction->meta['rate']), 'Purchase Combo');
                    } else {
                        if ($transaction->meta['point_uses'] > 0) {
                            $user->addPoints(-$transaction->meta['point_uses'], 'Purchase product');
                        }
                    }
                    $meta = $transaction->meta;
                    $meta['type'] = $product->is_combo ? 'combo' : 'reorder';
                    $meta['status'] = 'purchased';
                    $meta['is_auto'] = !$force;
                    $transaction->meta = $meta;
                    $transaction->save();

                    if ($user->hasRole('area_admin') || $user->hasRole('provincial_admin')) {
                        return;
                    }
                    $this->find_ref_by_reaches_lv($user);
                } else {
                    // Log::error('Không tìm thấy giao dịch. Cần xác nhận bằng tay! ID: ' . $transaction->id);
                }
            } catch (\Exception $e) {
                if ($transaction->confirmed) {
                    $user->wallet->balance -= $transaction->amount;
                    $user->wallet->save();
                }
                // $this->reject($transaction);

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
        if ($transaction->meta['status'] == 'refunded') {
            return;
        }
        try {
            // if re-order => + points
            $rate = $transaction->meta['rate'] ?? 2778;
            if (!isset($transaction->meta['point_uses'])) {
                $calc = PointCalc::getPrice($user, $product, $transaction->meta['qty']);
                $point = $calc['max_point_discount'];
            } else {
                $point = $transaction->meta['point_uses'];
            }
            if ($product->is_combo) {
                // if combo => - points
                $point = -round($transaction->amount / $rate);
                if (-$point > $user->currentPoints()) {
                    throw new \Exception("Số điểm hiện tại không đủ để hoàn tiền!");
                }
            }

            $data = [
                'type' => 'refund',
                'status' => 'refunded',
                'transaction_id' => $transaction->id
            ];

            // trừ hoa hồng (bonus)
            $sales = Transaction::with('payable')->where('meta->transaction_id', $transaction->id)->get();
            $sales->map(function($t) use ($data) {
                if ($t->payable->balance >= $t->amount) {
                    $t->payable->withdraw($t->amount, $data);
                } elseif ($t->payable->balance > 0) {
                    $t->payable->forceWithdraw($t->amount, $data);
                }
            });
            // refund
            $user->deposit($transaction->amount, $data);

            // trừ điểm
            $user->addPoints($point, 'Refund Transaction');

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
