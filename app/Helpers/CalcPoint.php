<?php

namespace App\Helpers;

class CalcPoint {
    private $increase_percent = 5; // %
    private static $refer_bonus = 500;

    public static function getPoint($type, $amount = 0)
    {
        $current_point = (float) file_get_contents(public_path('point.txt'));
        $points = [
            'refer' => self::$refer_bonus / $current_point,
            'purchase' => $amount / $current_point
        ];
        // refer
        if (in_array($type, array_keys($points))) {
            return round($points[$type]);
        } else {
            return null;
        }
    }
}
