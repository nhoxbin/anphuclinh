<?php

namespace App\Http\Controllers;

use App\Models\Level;
use App\Models\Product;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TestController extends Controller
{
    public function __invoke()
    {
        $users = User::where('level', '>', 0)->where('lv_up', '<>', null)->get();
        $now = now();
        $now = Carbon::create(2022, 9, 8);
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
    }
}
