<?php

namespace App\Jobs;

use App\Models\Product;
use App\Models\User;
use App\Services\UserPurchaseProductProcessor;
use Bavix\Wallet\Models\Transaction;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class ProcessUserPurchaseProduct implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $user;
    protected $transaction;
    protected $product;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(User $user, Transaction $transaction, Product $product)
    {
        $this->user = $user;
        $this->transaction = $transaction;
        $this->product = $product;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle(UserPurchaseProductProcessor $processor)
    {
        $processor->handle($this->user, $this->transaction, $this->product);
    }
}
