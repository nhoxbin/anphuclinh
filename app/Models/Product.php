<?php

namespace App\Models;

use Bavix\Wallet\Traits\HasWallet;
use Bavix\Wallet\Interfaces\Customer;
use Bavix\Wallet\Interfaces\Product as ProductInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model implements ProductInterface
{
    use HasWallet;
    use HasFactory;

    protected $fillable = ['price'];

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
        return round($this->price * 100);
    }

    public function getMetaProduct(): ?array
    {
        return [
            'title' => $this->title,
            'description' => 'Purchase of Product #' . $this->id,
        ];
    }
}
