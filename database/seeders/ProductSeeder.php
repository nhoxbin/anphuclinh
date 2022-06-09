<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = [[
            'name' => 'Gói Combo 3tr',
            'price' => '3000000',
            'combo_price' => '3000000',
            'is_combo' => 1,
            'box' => 1,
            'image' => 'images/products/icon-sp.png',
        ], [
            'name' => 'Sữa non Special New Crown +',
            'price' => '486000',
            'combo_price' => '300000',
            'is_combo' => 0,
            'box' => 24,
            'image' => 'images/products/sua.png',
        ], [
            'name' => 'Hoàn Hương Xuân',
            'price' => '680000',
            'combo_price' => '420000',
            'is_combo' => 0,
            'box' => 16,
            'image' => 'images/products/hhx.png',
        ], [
            'name' => 'Curmaxi Gold',
            'price' => '399000',
            'combo_price' => '241000',
            'is_combo' => 0,
            'box' => 30,
            'image' => 'images/products/cumaxi.png',
        ],];
        Product::insert($products);
    }
}
