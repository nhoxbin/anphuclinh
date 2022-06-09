<?php

namespace App\Http\Controllers;

use Curl;
use App\Models\Province;
use Illuminate\Http\Request;

class ProvinceController extends Controller
{
    public function __invoke(Request $request)
    {
        $curl = Curl::to($request->endpoint)->asJsonResponse()->get();
        return response()->json($curl);
    }
}
