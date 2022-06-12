<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Post extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'content'];

    public static function boot()
    {
        parent::boot();

        self::creating(function($model) {
            $slug = $model->title . ' ' . $model->id;
            $model->slug = Str::slug($slug);
        });
    }
}
