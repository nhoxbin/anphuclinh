<?php

namespace App\Providers;

use Illuminate\Support\Facades\Response;
use Illuminate\Support\ServiceProvider;

class ResponseMacroServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        Response::macro('success', function($data) {
            return Response::json([
                'type' => 'success',
                'data' => $data
            ]);
        });
        Response::macro('error', function(string $msg, $status = 400) {
            return Response::json([
                'title' => 'Lỗi!',
                'type' => 'error',
                'msg' => $msg
            ], $status);
        });
    }
}
