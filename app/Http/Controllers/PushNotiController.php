<?php

namespace App\Http\Controllers;

use Auth;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Notifications\Notification;

class PushNotiController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    /**
     * Store the PushSubscription.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request) {
        $this->validate($request, [
            'endpoint'    => 'required',
            'keys.auth'   => 'required',
            'keys.p256dh' => 'required'
        ]);
        $endpoint = $request->endpoint;
        $token = $request->keys['auth'];
        $key = $request->keys['p256dh'];
        $user = Auth::user();
        $user->updatePushSubscription($endpoint, $key, $token);

        return response()->json(['success' => true], 200);
    }

    /* public function push(User $user, $noti) {
        Notification::send($user, new $noti);
        return redirect()->back();
    } */
}
