<?php

namespace App\Models;

use App\Helpers\PointCalc;
use Bavix\Wallet\Interfaces\Customer;
use Illuminate\Database\Eloquent\Model;
use Bavix\Wallet\Interfaces\Product as ProductInterface;
use Bavix\Wallet\Traits\HasWallet;

class Package extends Model implements ProductInterface
{
    use HasWallet;

    public $timestamps = false;

    public function canBuy(Customer $customer, int $quantity = 1, bool $force = false): bool
    {
        /**
         * This is where you implement the constraint logic.
         *
         * If the service can be purchased once, then
         *  return !$customer->paid($this);
         */
        return true;
    }

    public function getAmountProduct(Customer $customer)
    {
        return $this->amount;
    }

    public function getMetaProduct(): ?array
    {
        return [
            'title' => 'Gói đầu tư ' . number_format($this->amount),
            'type' => 'package',
            'status' => 'purchased',
        ];
    }
}
