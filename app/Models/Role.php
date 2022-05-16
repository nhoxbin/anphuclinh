<?php

namespace App\Models;

use Spatie\Permission\Models\SpatieRole;

class Role extends SpatieRole
{
    protected $fillable = [
        'name'
    ];
}
