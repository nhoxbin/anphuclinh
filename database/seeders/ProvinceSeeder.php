<?php

namespace Database\Seeders;

use App\Helpers\PointCalc;
use App\Models\Province;
use App\Models\Referral;
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
        $areas = ['miennam' => 'miền Nam', 'mienbac' => 'miền Bắc'];
        foreach ($areas as $area => $value) {
            $user = User::create([
                'name' => 'Admin ' . $value,
                'email' => 'apl.' . $area . '@gmail.com',
                'province_code' => null,
                'email_verified_at' => now(),
                'password' => bcrypt('apl@' . $area),
                'remember_token' => Str::random(10)
            ]);
            $user->assignRole('area_admin');
        }

        // đà nẵng -> mũi cà mau (nam), huế -> ra (bắc)
        $curl = Curl::to('https://provinces.open-api.vn/api/?depth=1')->asJsonResponse()->get();
        foreach($curl as $province) {
            $province = Province::create([
                'name' => $province->name,
                'division_type' => $province->division_type,
                'code' => $province->code,
                'area' => $province->code >= 48 ? 'south' : 'north'
            ]);
            $user = User::create([
                'name' => 'Admin ' . $province->name,
                'email' => 'apl.' . $province->code . '@gmail.com',
                'province_code' => $province->code,
                'email_verified_at' => now(),
                'password' => bcrypt('apl@' . $province->code),
                'remember_token' => Str::random(10)
            ]);
            $user->assignRole('provincial_admin');
        }
    }
}
