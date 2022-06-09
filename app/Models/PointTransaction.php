<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Outhebox\Pointable\Models\Transaction;

class PointTransaction extends Transaction
{
    public function addTransaction(Model $pointable, $amount, $message, $data = null)
    {
        $transaction = new static();
        $transaction->amount = $amount;

        $transaction->current = $this->getCurrentPoints($pointable) + $amount;

        $transaction->message = $message;
        if ($data) {
            $transaction->fill($data);
        }
        // $transaction->save();
        $pointable->point_transactions()->save($transaction);

        return $transaction;
    }
}
