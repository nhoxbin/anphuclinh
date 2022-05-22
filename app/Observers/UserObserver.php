<?php

namespace App\Observers;

use App\Helpers\PointCalc;
use App\Models\Referral;
use App\Models\User;

class UserObserver
{
    /**
     * Handle the User "created" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function created(User $user)
    {
        $user->assignRole('member');

        $ref = User::whereRelation('roles', 'name', '=', 'super_admin')->first();
        if ($ref) {
            $data = ['user_id' => $user->id, 'refer_by' => $ref->id];
            Referral::create($data);
            $data['type'] = 'bonus';
            $user->addPoints(PointCalc::getPoint('refer'), __('Refer Bonus'), $data);
        }
    }

    /**
     * Handle the User "updated" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function updated(User $user)
    {
        //
    }

    /**
     * Handle the User "deleted" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function deleted(User $user)
    {
        //
    }

    /**
     * Handle the User "restored" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function restored(User $user)
    {
        //
    }

    /**
     * Handle the User "force deleted" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function forceDeleted(User $user)
    {
        //
    }
}
