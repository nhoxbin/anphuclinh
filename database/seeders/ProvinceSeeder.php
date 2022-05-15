<?php

namespace Database\Seeders;

use App\Models\Province;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;
use Curl;

class ProvinceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $curl = Curl::to('https://provinces.open-api.vn/api/?depth=1')->asJsonResponse()->get();
        foreach($curl as $province){
            Province::create([
                'name' => $province->name,
                'division_type' => $province->division_type,
                'codename' => $province->codename
            ]);
        }
    }
}
