<?php

namespace Database\Seeders;

use App\Models\Province;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
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
        $areas = ['south', 'north'];
        $users = [];
        foreach ($areas as $area) {
            $users[] = [
                'name' => 'Admin ' . ucfirst($area),
                'email' => 'admin_' . $area . '@gmail.com',
                'email_verified_at' => now(),
                'password' => bcrypt('apl@123' . $area),
                'remember_token' => Str::random(10),
            ];
        }

        // đà nẵng -> mũi cà mau (nam), huế -> ra (bắc)
        $curl = Curl::to('https://provinces.open-api.vn/api/?depth=1')->asJsonResponse()->get();
        $provinces = [];
        foreach($curl as $province){
            $provinces[] = [
                'name' => $province->name,
                'division_type' => $province->division_type,
                'code' => $province->code,
                'area' => $province->code >= 48 ? 'south' : 'north'
            ];
            $users[] = [
                'name' => 'Admin ' . $province->name,
                'email' => 'admin_' . $province->code . '@gmail.com',
                'province_code' => $province->code,
                'email_verified_at' => now(),
                'password' => bcrypt('apl@123' . $province->code),
                'remember_token' => Str::random(10),
            ];
        }
        Province::insert($provinces);
        User::insert($users);
    }
}
