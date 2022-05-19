<?php

namespace App\Helpers;

class PointCalc {
    public static function getFile()
    {
        return public_path('point.txt');
    }

    public static function getPoint($type, $amount = 0)
    {
        $increase_percent = 5; // %
        $refer_bonus = 500000;

        $current_point = (float) file_get_contents(self::getFile());
        $points = [
            'refer' => ['amount' => $refer_bonus / $current_point, 'precision' => 0],
            'purchase' => ['amount' => $amount / $current_point, 'precision' => 0],
            'increase' => ['amount' => $current_point * ($increase_percent / 100), 'precision' => 3],
        ];
        if (in_array($type, array_keys($points))) {
            return round($points[$type]['amount'], $points[$type]['precision']);
        }
        return null;
    }
}
