<?php

namespace App\Helpers;

class CalcPoint {
    private $increase_percent = 5; // %
    private $refer_bonus = 500000;
    private $current_point = 0;

    function __construct() {
        $this->current_point = (float) file_get_contents(public_path('point.txt'));
    }

    public static function getPoint($type, $amount = 0)
    {
        $points = [
            'refer' => self::$refer_bonus / self::$current_point,
            'purchase' => $amount / self::$current_point
        ];
        // refer
        if (in_array($type, array_keys(self::$points))) {
            return $points[$type];
        } else {
            return null;
        }
    }
}
