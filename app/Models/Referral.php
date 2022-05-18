<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Referral extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id', 'refer_by'
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function refs()
    {
        return $this->hasMany(self::class, 'refer_by', 'user_id')->limit(2);
    }
}
