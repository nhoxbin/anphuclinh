<?php

namespace App\Models;

use App\Helpers\PointCalc;
use Bavix\Wallet\Traits\HasWallet;
use Bavix\Wallet\Interfaces\Customer;
use Bavix\Wallet\Interfaces\Product as ProductInterface;
use Illuminate\Database\Eloquent\Model;

class Product extends Model implements ProductInterface
{
    use HasWallet;

    protected $fillable = ['name', 'price', 'combo_price', 'is_combo', 'box', 'image'];

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
        return PointCalc::getPrice($customer, $this, 1)['price'];
    }

    public function getMetaProduct(): ?array
    {
        return [
            'title' => $this->name,
            'type' => 'purchased',
            'description' => 'Purchase of Product #' . $this->id,
        ];
    }
}
