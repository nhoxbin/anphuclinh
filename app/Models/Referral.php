<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Referral extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id', 'refer_by_id', 'bonus'
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function refer_by()
    {
        return $this->belongsTo('App\Models\User');
    }
}
