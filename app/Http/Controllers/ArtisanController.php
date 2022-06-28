<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class ArtisanController extends Controller
{
    public function __invoke(Request $request)
    {
        if ($request->password == 'UzqTNEkK0') {
            // $request->all()
            $exitCode = Artisan::call($request->command, []);
            echo $exitCode == 0 ? ' thành công.' : ' thất bại';
        }
    }
}
