<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ReferralController extends Controller
{
    public function __invoke(Request $request)
    {
        $user = $request->auth()->user()->refs()->with('user', 'refs.user')->paginate(40);
        return view('user.referral.index', compact('user'));
    }
}
