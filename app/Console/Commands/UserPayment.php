<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

class UserPayment extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'user:payment';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

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
        try {
            $users = User::where('level', '>', 0)->where('lv_up', '<>', null)->get();
            $now = now();
            foreach ($users as $user) {
                $first_income = $user->lv_up;
                $second_income = $user->lv_up->addMonths(1);
                $third_income = $user->lv_up->addMonths(2);
                $cond = [
                    $now >= $first_income && $now < $second_income,
                    $now >= $second_income && $now < $third_income,
                    $now >= $third_income
                ];
                // đếm số lần trả lương cho thành viên
                $pay_income = $user->transactions()->where([
                    'meta->type' => 'income',
                    'meta->status' => 'paid',
                    'meta->level' => $user->level,
                ])->count();
                if (($cond[0] && $pay_income == 0) || ($cond[1] && $pay_income == 1) || $cond[2]) {
                    // đkiện 1 trả lần 1, đkiện 2 trả lần 2, đkiện 3 trả lần 3
                    $user->deposit((($user->lv->strong + $user->lv->strong/2)*0.1)/3, ['type' => 'income', 'status' => 'paid', 'level' => $user->level]);
                    if ($cond[2]) {
                        $user->level = 0;
                        $user->lv_up = null;
                        $user->save();
                    }
                }
            }
        } catch (\Exception $e) {
            Log::error($e);
        }
    }
}
