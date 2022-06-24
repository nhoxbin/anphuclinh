<?php

namespace Database\Seeders;

use App\Models\Gift;
use Illuminate\Database\Seeder;

class GiftSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            ['name' => 'Mốc thưởng 1', 'box' => 3, 'bonus' => 1, 'extra' => null],
            ['name' => 'Mốc thưởng 2', 'box' => 5, 'bonus' => 2, 'extra' => null],
            ['name' => 'Mốc thưởng 3', 'box' => 10, 'bonus' => 5, 'extra' => null],
            ['name' => 'Mốc thưởng 4', 'box' => 20, 'bonus' => 12, 'extra' => null],
            ['name' => 'Mốc thưởng 5', 'box' => 50, 'bonus' => 30, 'extra' => null],
            ['name' => 'Mốc thưởng 6', 'box' => 100, 'bonus' => 70, 'extra' => null],
            ['name' => 'Mốc thưởng 7', 'box' => 200, 'bonus' => 150, 'extra' => null],
            ['name' => 'Mốc thưởng 8', 'box' => 500, 'bonus' => 370, 'extra' => '1 xe máy trị giá 50 triệu'],
        ];
        Gift::insert($data);
    }
}
