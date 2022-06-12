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
            'current' => ['amount' => $current_point],
            'refer' => ['amount' => $refer_bonus / $current_point],
            'increase' => ['amount' => $current_point * ($increase_percent / 100)],
        ];
        if (in_array($type, array_keys($points))) {
            return round($points[$type]['amount']);
        }
        return null;
    }

    public static function getPrice($user, Product $product, $qty = 1, $is_uses_point = true)
    {
        $price = $product->price * $qty;
        $currentPoints = $user->currentPoints();
        $rate = self::getPoint('current');
        $vat = $max_price_discount = $max_point_discount = 0;

        if (!$product->is_combo) {
            // tái đơn
            if ((bool) $is_uses_point) {
                if ($user->has_combo) {
                    $percent = 50; // đã mua combo
                } else {
                    $percent = 38; // chưa mua combo
                }
            } else {
                $percent = 0;
            }
            if ($user->has_combo) {
                $price = $product->combo_price * $qty;
            }
            // giảm tối đa $percent trong tổng số điểm hiện có
            $max_price_discount = $price*$percent/100;
            $max_point_discount = round($max_price_discount/$rate);
            if ((bool) $is_uses_point && $max_point_discount > $currentPoints) $max_point_discount = $currentPoints;
            if ($max_price_discount > $max_point_discount*$rate) $max_price_discount = $max_point_discount*$rate;

            $vat = round(($price-$max_price_discount)*10/100);
            $price -= ($max_price_discount-$vat);
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
