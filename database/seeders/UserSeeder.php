<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // seeding super admin
        $user = User::create([
            'name' => 'IT Admin',
            'email' => 'bin_admin@gmail.com',
            'phone' => '0365664356',
            'level' => '8',
            'email_verified_at' => now(),
            'password' => bcrypt('missyou2579@aA'),
            'remember_token' => Str::random(10)
        ]);
        $user->assignRole('super_admin');
    }
}
