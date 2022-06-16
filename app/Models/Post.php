<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Post extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'slug', 'image', 'content', 'user_id'];

    public static function boot()
    {
        parent::boot();

        self::created(function($model) {
            $model->slug .= '-' . $model->id;
            $model->save();
        });
    }

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
