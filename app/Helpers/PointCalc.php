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
            $discount_price = $price*$percent/100;
            $max_point_discount = round($discount_price/$rate);
            if ($max_point_discount > $currentPoints) {
                $max_point_discount -= $currentPoints;
            }
            $max_price_discount = $max_point_discount*$rate;
            $vat = round($max_price_discount*10/100);
            $price = ($price + $vat) - $max_price_discount;
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
