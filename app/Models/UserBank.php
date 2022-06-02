<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserBank extends Model
{
    use HasFactory;

    protected $fillable = ['alias', 'bank_id', 'host', 'number', 'branch'];
    protected $table = 'users_banks';
}
