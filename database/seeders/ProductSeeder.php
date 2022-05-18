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
        $products = [
            [
                'name' => 'Gói Combo 3tr',
                'price' => '3000000',
                'image' => asset('images/products/icon-sp.png'),
            ],
            [
                'name' => 'Sữa non Special New Crown +',
                'price' => '486000',
                'image' => asset('images/products/sua.png'),
            ],
            [
                'name' => 'Hoàn Hương Xuân',
                'price' => '680000',
                'image' => asset('images/products/hhh.png'),
            ],
            [
                'name' => 'Curmaxi Gold',
                'price' => '399000',
                'image' => asset('images/products/cumaxi.png'),
            ],
        ];
        Product::insert($products);
    }
}
