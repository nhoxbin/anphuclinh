<?php

namespace Database\Seeders;

use App\Models\Level;
use Illuminate\Database\Seeder;

class LevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $levels = [[
            'name' => 'Thành viên',
            'lv' => '0',
            'strong' => '0',
            'weak' => '0',
        ], [
            'name' => 'Trợ lý',
            'lv' => '1',
            'strong' => '100000000',
            'weak' => '50000000',
        ], [
            'name' => 'Quản lý',
            'lv' => '2',
            'strong' => '200000000',
            'weak' => '100000000',
        ], [
            'name' => 'Phó giám đốc',
            'lv' => '3',
            'strong' => '500000000',
            'weak' => '250000000',
        ], [
            'name' => 'Giám đốc',
            'lv' => '4',
            'strong' => '1000000000',
            'weak' => '500000000',
        ], [
            'name' => 'Giám đốc 1 sao',
            'lv' => '5',
            'strong' => '2000000000',
            'weak' => '1000000000',
        ], [
            'name' => 'Giám đốc 2 sao',
            'lv' => '6',
            'strong' => '5000000000',
            'weak' => '2500000000',
        ], [
            'name' => 'Giám đốc 3 sao',
            'lv' => '7',
            'strong' => '10000000000',
            'weak' => '5000000000',
        ], [
            'name' => 'Giám đốc 4 sao',
            'lv' => '8',
            'strong' => '20000000000',
            'weak' => '10000000000',
        ],];
        Level::insert($levels);
    }
}
