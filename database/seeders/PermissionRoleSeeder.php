<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;

class PermissionRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        $arrayOfRoles = ['super_admin', 'area_admin', 'provincial_admin', 'user'];
        $roles = collect($arrayOfRoles)->map(function ($role) {
            return ['name' => $role, 'guard_name' => 'web'];
        });
        Role::insert($roles->toArray());
    }
}
