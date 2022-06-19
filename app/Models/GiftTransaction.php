<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GiftTransaction extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'gift_id', 'meta'];
    protected $casts = ['meta' => 'json'];

    /* public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function gift()
    {
        return $this->belongsTo('App\Models\Gift');
    } */
}
