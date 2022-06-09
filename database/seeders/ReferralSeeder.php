<?php

namespace Database\Seeders;

use App\Models\Referral;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class ReferralSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            ['name' => 'test1', 'province_code' => 49],
            ['name' => 'test2', 'province_code' => 45],
            ['name' => 'test3', 'province_code' => 45],
        ];
        foreach ($data as $key => $value) {
            ${$value['name']} = User::create([
                'name' => ucfirst($value['name']),
                'email' => $value['name'] . '@gmail.com',
                'province_code' => $value['province_code'],
                'email_verified_at' => now(),
                'password' => bcrypt('123456'),
                'remember_token' => Str::random(10)
            ]);
        }
        $data = [
            ['user_id' => $test2->id, 'refer_by' => $test1->id],
            ['user_id' => $test3->id, 'refer_by' => $test2->id],
        ];
        Referral::insert($data);
    }
}
