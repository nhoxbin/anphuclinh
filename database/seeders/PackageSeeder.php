<?php

namespace Database\Seeders;

use App\Models\Package;
use Illuminate\Database\Seeder;

class PackageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $packages = [
            ['amount' => 50000000],
            ['amount' => 100000000],
            ['amount' => 200000000],
            ['amount' => 500000000],
            ['amount' => 1000000000],
        ];
        Package::insert($packages);
    }
}
