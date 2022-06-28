<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ResetPasswordController extends Controller
{
    public function __invoke(Request $request)
    {
        $request->validate([
            'verification' => 'required|string|digits:6',
            'password' => 'required|string|min:6',
            'password_confirm' => 'required|same:password',
        ]);
    }
}
