<?php

namespace Database\Seeders;

use App\Models\Province;
use App\Models\Role;
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
            $user = User::create([
                'name' => 'Admin ' . ucfirst($area),
                'email' => 'admin_' . $area . '@gmail.com',
                'province_code' => null,
                'email_verified_at' => now(),
                'password' => bcrypt('apl@123' . $area),
                'remember_token' => Str::random(10)
            ]);
            $user->assignRole('area_admin');
        }

        // đà nẵng -> mũi cà mau (nam), huế -> ra (bắc)
        $curl = Curl::to('https://provinces.open-api.vn/api/?depth=1')->asJsonResponse()->get();
        $provinces = [];
        foreach($curl as $province) {
            $province = Province::create([
                'name' => $province->name,
                'division_type' => $province->division_type,
                'code' => $province->code,
                'area' => $province->code >= 48 ? 'south' : 'north'
            ]);
            $user = User::create([
                'name' => 'Admin ' . $province->name,
                'email' => 'admin_' . $province->code . '@gmail.com',
                'province_code' => $province->code,
                'email_verified_at' => now(),
                'password' => bcrypt('apl@123' . $province->code),
                'remember_token' => Str::random(10)
            ]);
            $user->assignRole('provincial_admin');
        }
    }
}
