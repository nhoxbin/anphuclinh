<?php

namespace App\Providers;

use Validator;
use App\Models\User;
use App\Observers\UserObserver;
use Illuminate\Http\Response;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Validator::extend('file_extension', function ($attribute, $value, $parameters, $validator) {
            if (!$value instanceof UploadedFile) {
                return false;
            }

            $extensions = implode(',', $parameters);
            $validator->addReplacer('file_extension', function (
                $message,
                $attribute,
                $rule,
                $parameters
            ) use ($extensions) {
                return \str_replace(':values', $extensions, $message);
            });

            $extension = strtolower($value->getClientOriginalExtension());

            return $extension !== '' && in_array($extension, $parameters);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
    }
}
