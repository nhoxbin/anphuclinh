<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    // use \Nio\LaravelInstaller\Helpers\MigrationsHelper;
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        // $check_dt = \App\Helpers\IcoHandler::checkDB();
        /* $user = Auth::user();
        if (Auth::guard($guard)->check()) {
            if ($user->status == 'active') {
                $link = ($user->role == 'admin') ? '/admin' : '/user';
                if ($user->type == "demo")
                    return redirect(url('/') . $link . '?notice');
                else
                    return redirect(url('/') . $link);
            } else {
                Auth::logout();
                return redirect(route('login'))->with(['danger' => 'You are not a user']);
            }
        } */
        /* if (empty($check_dt)) {
        } else {
            $migrations = $this->getMigrations();
            $dbMigrations = $this->getExecutedMigrations();
            $need_update = count($migrations) - count($dbMigrations);

            return response()->view('errors.db_error', compact('check_dt', 'need_update'));
        } */


        return $next($request);
    }
}
