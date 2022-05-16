<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bank extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'host',
        'number',
        'branch',
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
