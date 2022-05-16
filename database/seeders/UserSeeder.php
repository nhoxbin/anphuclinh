<?php

namespace Database\Seeders;

use App\Models\Role;
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
            'name' => 'Super Admin',
            'email' => 'super_admin@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('apl@super_admin#123'),
            'remember_token' => Str::random(10)
        ]);
        $user->assignRole('super_admin');
    }
}
