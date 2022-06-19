<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gift extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'box', 'bonus'];
    protected $timestamps = false;

    /* public function transactions()
    {
        return $this->hasMany('App\Models\GiftTransaction', 'gift_id');
    } */
}
