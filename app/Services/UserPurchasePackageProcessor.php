<?php

namespace App\Services;

use Curl;
use App\Helpers\PointCalc;
use App\Models\Package;
use App\Models\User;
use Illuminate\Support\Facades\Log;

class UserPurchasePackageProcessor
{
    public function handle(User $user, $transaction, Package $package, $force = false)
    {
        /* $object = (object) [
            "transactionID" => 9668,
            "amount" => 50000000,
            "description" => "APL1111 FT22134660080706 GD 311270-051422 16:25:18",
            "transactionDate" => "16/05/2022",
            "type" => "IN"
        ]; */

        $curl = Curl::to(config('bank.endpoint'))->asJsonResponse()->get();
        // $curl->transactions = [$object];
        if ($curl->status == true || $force) {
            $histories = $curl->transactions;
            $history = array_filter($histories, fn($h) => ($h->type == 'IN' && $h->amount == $transaction->amount && str_contains(strtolower($h->description), strtolower($transaction->meta['description']))));

            $amt = $package->amount;
            try {
                if ((count($history) || $force) && $user->confirm($transaction) && $user->pay($package)) {
                    $purchased_data = ['transaction_id' => $transaction->id, 'type' => 'bonus'];

                    // admin tỉnh: x2.2
                    $provincial_admin = $user->province->users()->whereRelation('roles', 'name', '=', 'provincial_admin')->get();
                    $provincial_admin->map(fn($u) => $u->deposit(round($amt*2.2/100), $purchased_data));

                    // admin miền: x1.1
                    $area_admin = User::whereRelation('province', 'area', '=', $user->province->area)->whereRelation('roles', 'name', '=', 'area_admin')->first();
                    $area_admin->deposit(round($amt*1.1/100), $purchased_data);

                    $user->addPoints(round($amt / PointCalc::getPoint('current')), 'Purchase Package', ['type' => 'package-purchased', 'transaction_id' => $transaction->id]);
                } else {
                    Log::error('Không tìm thấy giao dịch! ID: ' . $transaction->id);
                }
            } catch (\Exception $e) {
                $user->wallet->balance -= $amt;
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
