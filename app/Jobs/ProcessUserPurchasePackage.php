<?php

namespace App\Jobs;

use App\Models\Package;
use App\Models\User;
use App\Services\UserPurchasePackageProcessor;
use Bavix\Wallet\Models\Transaction;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class ProcessUserPurchasePackage implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $user;
    protected $transaction;
    protected $package;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(User $user, Transaction $transaction, Package $package)
    {
        $this->user = $user;
        $this->transaction = $transaction;
        $this->package = $package;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle(UserPurchasePackageProcessor $processor)
    {
        $processor->handle($this->user, $this->transaction, $this->package);
    }
}
