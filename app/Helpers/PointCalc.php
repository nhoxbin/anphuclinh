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
        if (!$product->is_combo) {
            if ($user->has_combo) {
                $percent = 50; // đã mua combo
                $price = $product->combo_price * $qty;
            } else {
                $percent = 38; // chưa mua combo
            }
            // giảm tối đa $percent trong tổng số điểm hiện có
            $vat = round($price*10/100);
            $max_discount_point = round($currentPoints*$percent/100);
            $max_price_discount = $price-$max_discount_point;
            $price -= $max_price_discount + $vat;
        }
        return [
            'price' => $price,
            'point' => $currentPoints,
            'vat' => $vat ?? 0,
            'max_price_discount' => $max_price_discount ?? 0,
            'max_discount_point' => $max_discount_point ?? 0
        ];
    }
}
