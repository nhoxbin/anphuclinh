<?php

namespace App\Console\Commands;

use App\Models\Product;
use App\Models\Transaction;
use App\Models\User;
use Curl;
use Illuminate\Console\Command;

class BankHistory extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'bank:history';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Checking bank history';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $curl = Curl::to(config('bank.endpoint'))->asJsonResponse()->get();
        if ($curl->status) {
            $transactions = Transaction::where('confirm', 0)->whereHas('user')->get();

            $histories = $curl->transactions;
            foreach ($transactions as $transaction) {
                $product = Product::find($transaction->meta->product_id);
                $user = $transaction->user();

                foreach ($histories as $history) {
                    if ($history->type == 'IN' && $history->amount == $product->price && $history->description == $transaction->meta->description) {

                        $user->confirm($transaction);
                        if ($user->safePay($product)) {
                            // tầng 1: 10%
                            $user->ref->user()->deposit(0);
                            // tầng 2: 20%
                            $user->ref->user->ref->user()->deposit(0);

                            // admin tỉnh: x2.2
                            User::whereRelation('roles', 'name', '=', 'provincial_admin')->get()->each(function($admin) {
                                $admin->deposit(0);
                            });

                            // admin miền: x1.1
                            User::whereRelation('roles', 'name', '=', 'area_admin')->get()->each(function($admin) {
                                $admin->deposit(0);
                            });
                        }
                    }
                }
            }
        } else {
            $this->log('Không thể lấy lịch sử giao dịch ngân hàng. WEB API: https://api.web2m.com');
        }
        return 0;
    }
}
