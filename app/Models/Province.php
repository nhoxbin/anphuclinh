<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'division_type', 'codename'
    ];

    public function users()
    {
        return $this->hasMany('App\Models\User', 'province_code', 'code');
    }
}
