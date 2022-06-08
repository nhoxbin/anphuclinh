<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;

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
                $first_income = $user->lv_up->addMonth();
                $second_income = $user->lv_up->addMonths(2);
                $third_income = $user->lv_up->addMonths(3);
                $cond = [
                    $now >= $first_income && $now < $second_income,
                    $now >= $second_income && $now < $third_income,
                    $now >= $third_income
                ];
                // đếm số lần trả lương cho thành viên
                $pay_income = $user->transactions()->where([
                    'meta->type' => 'income',
                    'meta->level' => $user->level,
                ])->count();
                if (($cond[0] && $pay_income == 0) || ($cond[1] && $pay_income == 1) || $cond[2]) {
                    // đkiện 1 trả lần 1, đkiện 2 trả lần 2, đkiện 3 trả lần 3
                    $user->deposit($user->lv->strong*5/100, ['type' => 'income', 'level' => $user->level]);
                    if ($cond[2]) {
                        $user->level = 0;
                        $user->lv_up = null;
                        $user->save();
                    }
                }
            }
        } catch (\Exception $e) {
            $this->error($e);
        }
    }
}
