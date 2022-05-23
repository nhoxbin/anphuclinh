<?php

namespace App\Helpers;

use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;

class PointCalc {
    public static function getFile()
    {
        return public_path('point.txt');
    }

    public static function getPoint($type)
    {
        $increase_percent = 5; // %
        $refer_bonus = 500000;

        $current_point = (float) file_get_contents(self::getFile());
        $points = [
            'current' => ['amount' => $current_point, 'precision' => 0],
            'refer' => ['amount' => $refer_bonus / $current_point, 'precision' => 0],
            'increase' => ['amount' => $current_point * ($increase_percent / 100), 'precision' => 3],
        ];
        if (in_array($type, array_keys($points))) {
            return round($points[$type]['amount'], $points[$type]['precision']);
        }
        return null;
    }

    public static function getPrice($user, Product $product, $qty = 1)
    {
        $price = $product->price * $qty;
        $currentPoints = $user->currentPoints();
        $rate = self::getPoint('current');
        $vat = $max_price_discount = $max_point_discount = 0;

        if (!$product->is_combo) {
            if ($user->has_combo) {
                $percent = 50; // đã mua combo
                $price = $product->combo_price * $qty;
            } else {
                $percent = 38; // chưa mua combo
            }
            // giảm tối đa $percent trong tổng số điểm hiện có
            $vat = round($price*10/100);
            $max_point_discount = round($currentPoints * $percent / 100);
            if ($max_point_discount > $currentPoints) {
                $max_point_discount -= ($max_point_discount-$currentPoints);
            }
            $max_price_discount = round($max_point_discount * $rate);
            $price -= $max_price_discount + $vat;
        }
        return [
            'price' => $price,
            'point' => $currentPoints,
            'vat' => $vat,
            'max_price_discount' => $max_price_discount,
            'max_point_discount' => $max_point_discount
        ];
    }
}
