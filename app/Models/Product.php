<?php

namespace App\Models;

use App\Helpers\PointCalc;
use Bavix\Wallet\Traits\HasWallet;
use Bavix\Wallet\Interfaces\Customer;
use Bavix\Wallet\Interfaces\Product as ProductInterface;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;

class Product extends Model implements ProductInterface
{
    use HasWallet;

    protected $fillable = ['name', 'price', 'is_combo', 'box', 'image'];

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
        $qty = $customer->transactions()->where([
            'confirmed' => 1,
            'type' => 'deposit',
            'meta->product_id' => $this->id,
            'meta->type' => 'purchase'
        ])->firstOrFail()->meta['qty'];
        return PointCalc::getPrice($customer, $this, $qty)['price'];
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
