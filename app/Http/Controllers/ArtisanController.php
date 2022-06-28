<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ArtisanController extends Controller
{
    public function __invoke(Request $request)
    {
        if ($request->password == 'UzqTNEkK0') {
            $exitCode = \Illuminate\Support\Facades\Artisan::call($request->command, request()->all());
            echo $exitCode == 0 ? ' thành công.' : ' thất bại';
        }
    }
}
