<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ReferralController extends Controller
{
    public function __invoke(Request $request)
    {
        $user = $request->user()->refs()->paginate(20);
        return view('user.referral.index', compact('user'));
    }
}
