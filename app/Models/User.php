<?php

namespace App\Models;

use App\Models\KYC;
use App\Models\Setting;
use App\Notifications\ResetPassword;
use Bavix\Wallet\{
    Traits\CanPay,
    Traits\CanConfirm,
    Interfaces\Customer,
    Interfaces\Confirmable,
    Models\Transaction
};
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Str;
use Spatie\Permission\Traits\HasRoles;
use Outhebox\Pointable\Contracts\Pointable;
use Outhebox\Pointable\Traits\Pointable as PointableTrait;
use NotificationChannels\WebPush\HasPushSubscriptions;

class User extends Authenticatable implements Customer, Confirmable, Pointable // implements MustVerifyEmail
{
    use CanPay, PointableTrait {
        CanPay::transactions insteadof PointableTrait;
        PointableTrait::transactions as point_transactions;
    }
    use CanConfirm;
    use HasRoles;
    use Notifiable;
    use HasPushSubscriptions;

    protected $fillable = [
        'name', 'phone', 'email', 'password', 'lastLogin', 'province_code', 'level', 'is_uses_point', 'lv_up'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $appends = [
        'has_combo'
    ];

    protected $casts = [
        'lv_up' => 'date',
        'is_uses_point' => 'boolean',
    ];

    public function addPoints($amount, $message, $data = null)
    {
        return (new PointTransaction())->addTransaction($this, $amount, $message, $data = null);
    }

    /**
     * Send the password reset notification.
     *
     * @param  string  $token
     * @return void
     */
    public function sendPasswordResetNotification($token)
    {
        $this->notify(new ResetPassword($token));
    }

    /**
     *
     * Relation with kyc
     *
     * @version 1.0.0
     * @since 1.0
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function kyc_info()
    {
        return $this->belongsTo('App\Models\KYC', 'id', 'userId')->orderBy('created_at', 'DESC');
    }

    /**
     *
     * Relation with meta
     *
     * @version 1.0.0
     * @since 1.0
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function meta()
    {
        return $this->belongsTo('App\Models\UserMeta', 'id', 'userId');
    }

    /**
     *
     * Relation with meta
     *
     * @version 1.0.0
     * @since 1.0
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function access()
    {
        return $this->belongsTo('App\Models\GlobalMeta', 'id', 'pid')->where(['name' => 'manage_access'])->withDefault(['name' => 'manage_access', 'value' => 'default', 'extra' => json_encode(['all'])]);
    }

    /**
     *
     * Relation with Activity logs
     *
     * @version 1.0.0
     * @since 1.0
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function logs()
    {
        return $this->belongsTo('App\Models\Activity', 'id', 'user_id');
    }

    public function ref_by()
    {
        return $this->hasOneThrough(self::class, 'App\Models\Referral', 'user_id', 'id', 'id', 'refer_by');
    }

    public function refs()
    {
        return $this->hasManyThrough(self::class, 'App\Models\Referral', 'refer_by', 'id', 'id', 'user_id')
            ->with('refs', 'transactions');
    }

    public function lv()
    {
        return $this->belongsTo('App\Models\Level', 'level', 'lv');
    }

    public function banks()
    {
        return $this->hasMany('App\Models\UserBank', 'user_id');
    }

    public function province()
    {
        return $this->belongsTo('App\Models\Province', 'province_code', 'code');
    }

    public function gifts()
    {
        return $this->hasManyThrough('App\Models\Gift', 'App\Models\GiftTransaction', 'user_id', 'id', 'id', 'gift_id');
    }

    public function gift_transactions()
    {
        return $this->hasMany('App\Models\GiftTransaction', 'user_id');
    }

    public function getCurrentLevelAttribute()
    {
        $lv = ($this->level == 0 && $this->has_combo) ? 'Đại lý' : $this->lv->name;
        $package_purchased_amt = $this->transactions()->where([
            'type' => 'deposit',
            'meta->type' => 'package',
            'meta->status' => 'purchased'
        ])->sum('amount');
        if ($package_purchased_amt > 0) {
            $lv .= ' + Đã đầu tư: ' . number_format($package_purchased_amt) . '<sup>đ</sup>';
        }
        return $lv;
    }

    public function getHasComboAttribute()
    {
        return $this->transactions()->where([
            'confirmed' => 1,
            'meta->type' => 'combo'
        ])->exists();
    }

    public function reward_amount($tnx_current)
    {
        $tnx = Transaction::find($tnx_current->meta['transaction_id']);
        $product = Product::find($tnx->meta['product_id']);
        $is_ref1 = $tnx->payable->ref_by->id == $tnx_current->payable_id;
        $is_ref2 = $tnx->payable->ref_by->ref_by && $tnx->payable->ref_by->ref_by->id == $tnx_current->payable_id;
        if ($product->is_combo) {
            if ($is_ref1) {
                $amount = '10%';
            } elseif ($is_ref2) {
                $amount = '20%';
            }
        } else {
            if ($is_ref1) {
                $amount = 5000 . '<sup>đ</sup>';
            } elseif ($is_ref2) {
                $amount = 10000 . '<sup>đ</sup>';
            }
        }
        if (!isset($amount)) {
            if ($tnx_current->payable->hasRole('area_admin')) {
                $amount = '1.1%';
            } else {
                $amount = '2.2%';
            }
        }
        return [$product->name, $amount, $tnx];
    }

    public function refs_ids($user, &$transaction_ids)
    {
        foreach ($user->refs as $ref) {
            $transaction_ids->push($ref->id);
            $this->refs_ids($ref, $transaction_ids);
        }
    }

    public function getGroupIdsAttribute()
    {
        $group_ids = collect([]);
        if ($this->hasRole('area_admin')) {
            $group_ids = User::whereHas('province', fn($q) => $q->where('area', $this->province->area))->pluck('id');
        } elseif ($this->hasRole('provincial_admin')) {
            $group_ids = User::where('province_code', $this->province_code)->pluck('id');
        } else {
            $group_ids->push($this->id);
            $this->refs_ids($this, $group_ids);
        }

        return $group_ids;
    }

    public function sales($type = 'combo', $date = null)
    {
        // Tổng doanh số
        $group_ids = $this->group_ids;
        $data = [
            'payable_type' => 'App\\Models\\User',
            'confirmed' => 1,
            'meta->status' => 'purchased',
            'meta->type' => $type,
        ];

        $data['type'] = 'deposit';
        $transaction = Transaction::query();
        $transaction->whereIn('payable_id', $group_ids)->where($data);

        if (is_null($date)) {
            $transaction->whereYear('created_at', now()->year);
        } else {
            $transaction->whereDate('created_at', $date);
        }
        return $transaction->sum('amount');
    }

    public function getSalesBranchesAttribute()
    {
        $strong = $weak = 0;

        foreach ($this->refs as $ref) {
            $amount = $ref->sales();

            if ($strong < $amount) {
                $strong = $weak = $amount;
            }
            if ($weak > $amount && $amount < $strong) {
                $weak = $amount;
            }
        }
        return [$strong, $weak];
    }

    public function getSalesReachesLvAttribute()
    {
        list($strong, $weak) = $this->sales_branches;
        $lv = -1;
        $levels = Level::all();
        foreach ($levels as $level) {
            if ($level->strong > 0 && $strong >= $level->strong && $weak >= $level->strong*50/100) {
                $lv = $level->lv;
            }
        }
        return $lv;
    }

    public function box_bonus($product_id)
    {
        $boxes_personal = $this->user_boxes();
        $boxes_group = $this->user_boxes('group');

        $data = ['personal' => [], 'group' => []];
        if (isset($boxes_personal[$product_id]) || isset($boxes_group[$product_id])) {
            if (!empty($boxes_personal)) {
                $product = $boxes_personal[$product_id];
                $total_buy_box = (int) ($product['qty']/$product['box']);

                $received = $this->gift_transactions()->where([
                    'product_id' => $product_id,
                    'meta->type' => 'personal',
                ])->sum('meta->amount');

                $gifts = $this->gifts()->where([
                    'product_id' => $product_id,
                    'meta->type' => 'personal'
                ])->pluck('gifts.id');
                $gift = Gift::where('box', '<=', $total_buy_box)->whereDoesntHave('transactions', function($q) use ($gifts) {
                    $q->whereIn('gift_id', $gifts);
                })->orderBy('bonus', 'desc')->first();
                if (!is_null($gift)) {
                    $data['personal'] = [
                        'remain' => $gift->bonus - $received,
                        'gift_id' => $gift->id,
                        'extra' => $gift->extra,
                        'total_buy_box' => $total_buy_box
                    ];
                }
            }
            if (!empty($boxes_group)) {
                $product = $boxes_group[$product_id];
                $total_buy_box = (int) ($product['qty']/$product['box']);

                if ($total_buy_box >= 3) {
                    $received = GiftTransaction::where([
                        'user_id' => $this->id,
                        'product_id' => $product_id,
                        'meta->type' => 'group'
                    ])->sum('meta->amount');

                    // tính ra doanh số sẽ thưởng cho các user để trừ vào tổng thưởng
                    $sale_boxes = $total_user_bonus = 0;
                    foreach ($this->refs as $ref) {
                        $transaction = $ref->transactions()
                            ->where([
                                'confirmed' => 1,
                                'meta->type' => 'reorder',
                                'meta->status' => 'purchased',
                                'meta->point_uses' => 0,
                                'meta->product_id' => $product_id
                            ])->where('meta->qty', '>', 0)
                            ->where('updated_at', '>=', $product['has_combo_since']->updated_at->toDateTimeString())
                            ->whereYear('updated_at', now()->year)
                            ->select('meta->product_id as product_id', 'meta->qty as qty', 'updated_at')
                            ->get()->toArray();

                        $boxes = (int) (array_sum(array_column($transaction, 'qty'))/$product['box']);
                        $sale_boxes += $boxes;
                        if ($boxes >= 3) {
                            $bonus = Gift::where('box', '<=', $boxes)->max('bonus');
                            $total_user_bonus += $bonus;
                        }
                    }

                    // $gift = Gift::where('box', $total_buy_box)->orderBy('box', 'desc')->first();
                    $available_gifts = Gift::where('box', '<=', $total_buy_box)->orderBy('box', 'desc')->get();
                    if (!is_null($available_gifts) && $available_gifts[0]->box == $total_buy_box) {
                        $total_bonus = $available_gifts[0]->bonus;
                    } else {
                        $gifts = collect([]);
                        // tính tổng doanh số nhóm => tổng thưởng
                        for ($i=0; $i < $available_gifts->count(); $i++) {
                            $sale_boxes -= $available_gifts[$i]->box;
                            if ($sale_boxes > 0) {
                                $gifts->push($available_gifts[$i]);
                            } else {
                                $sale_boxes += $available_gifts[$i]->box;
                            }
                        }
                        $total_bonus = $gifts->map(fn($g) => $g->bonus)->sum() - $total_bonus;
                    }
                    $remain = (int) ((($total_bonus-$total_user_bonus)*0.2)-$received);
                    $gift = $available_gifts->first();
                    $data['group'] = [
                        'remain' => $remain,
                        'gift_id' => $gift->id,
                        'extra' => $gift->extra,
                        'total_buy_box' => $total_buy_box
                    ];
                }
            }
        }
        return collect($data);
    }

    public function user_boxes($subject = 'personal')
    {
        // tính từ lúc mua combo đến hết năm
        $has_combo = $this->transactions()->where([
            'confirmed' => 1,
            'meta->type' => 'combo'
        ])->first();
        if (is_null($has_combo)) {
            return [];
        }

        $group_ids = collect([]);
        $group_ids->push($this->id);
        if ($subject == 'group') {
            // chỉ tính F1
            foreach ($this->refs as $ref) {
                $group_ids->push($ref->id);
            }
        }
        $transaction = Transaction::whereIn('payable_id', $group_ids)
            ->where([
                'confirmed' => 1,
                'meta->type' => 'reorder',
                'meta->status' => 'purchased',
                'meta->point_uses' => 0
            ])->where('meta->qty', '>', 0)
            ->where('updated_at', '>=', $has_combo->updated_at->toDateTimeString())
            ->whereYear('updated_at', now()->year)
            ->select('meta->product_id as product_id', 'meta->qty as qty', 'updated_at')
            ->get()->toArray();

        $boxes = [];
        foreach ($transaction as $value) {
            if (!isset($boxes[$value['product_id']])) {
                $product = Product::find($value['product_id']);
                $boxes[$value['product_id']] = [
                    'name' => $product->name,
                    'has_combo_since' => $has_combo,
                    'ids' => $group_ids,
                    'unit' => $product->unit,
                    'box' => $product->box,
                    'qty' => $value['qty']
                ];
                continue;
            }
            $boxes[$value['product_id']]['qty'] += $value['qty'];
        }
        return $boxes;
    }

    public function box_sale($subject = 'personal')
    {
        $boxes = $this->user_boxes($subject);
        foreach ($boxes as $product) {
            $box = (int) ($product['qty']/$product['box']);
            $pieces = $product['qty']%$product['box'];
            echo "{$product['name']}: $box thùng, $pieces {$product['unit']}<br />";
        }
    }

    /**
     *
     * Check user role
     *
     * @version 1.0.0
     * @since 1.1.5
     * @return boolean
     */
    public function is($name)
    {
        return $this->role == $name;
    }

    /**
     * Data of Advanced search and export
     *
     * @version 1.0.0
     * @since 1.1
     * @return self
     */
    public static function AdvancedFilter(Request $request)
    {
        if ($request->s) {
            $users = User::where(function ($q) use ($request) {
                    $id_num = (int)(str_replace(config('icoapp.user_prefix'), '', $request->s));
                    $q->orWhere('id', $id_num)->orWhere('email', 'like', '%' . $request->s . '%')->orWhere('name', 'like', '%' . $request->s . '%');
                });
            return $users;
        }

        if ($request->filter) {
            $users = User::whereNotIn('status', ['deleted'])
                ->where(function ($q) use ($request) {
                    $roles = ($request->adm && $request->adm == 'yes') ? ['user', 'admin'] : ['user'];
                    $q->whereIn('role', $roles)->where(self::keys_in_filter($request->only(['wallet', 'state', 'reg', 'token', 'refer'])));
                })
                ->when($request->valid, function ($q) use ($request) {
                    $kyc_ids = KYC::where('status', 'approved')->pluck('userId');
                    if ($request->valid == 'email') {
                        $q->whereNotNull('email_verified_at');
                    }
                    if ($request->valid == 'kyc') {
                        $q->whereIn('id', $kyc_ids);
                    }
                    if ($request->valid == 'both') {
                        $q->whereIn('id', $kyc_ids)->whereNotNull('email_verified_at');
                    }
                })
                ->when($request->search, function ($q) use ($request) {
                    $where  = (isset($request->by) && $request->by != '') ? strtolower($request->by) : 'name';
                    $search = ($where == 'id') ? (int)(str_replace(config('icoapp.user_prefix'), '', $request->search)) : $request->search;
                    if ($where == 'id') {
                        $q->where($where, $search);
                    } else {
                        $q->where($where, 'like', '%' . $search . '%');
                    }
                });
            return $users;
        }
        return $this;
    }

    /**
     * Search/Filter parametter exchnage with database value
     *
     * @version 1.0.0
     * @since 1.1.0
     * @return void
     */
    protected static function keys_in_filter($request)
    {
        $result = [];
        $find = ['wallet', 'state', 'reg', 'token', 'refer'];
        $replace = ['walletType', 'status', 'registerMethod', 'tokenBalance', 'referral'];
        foreach ($request as $key => $value) {
            $set_key = str_replace($find, $replace, $key);
            $val = trim($value);

            if (!empty($val)) {
                if ($set_key == 'walletType') {
                    $result[] = array($set_key, '!=', null);
                } elseif ($set_key == 'tokenBalance') {
                    $result[] = array($set_key, ($val == 'has' ? '>' : '='), ($val == 'has' ? 0 : null));
                } elseif ($set_key == 'referral') {
                    $result[] = array($set_key, ($val == 'yes' ? '!=' : '='), null);
                } else {
                    $result[] = array($set_key, '=', $val);
                }
            }
        }
        return $result;
    }

    /**
     *
     * Relation with transaction
     *
     * @version 1.0.0
     * @since 1.0
     * @return void
     */
    public function first_tnx()
    {
        $user = $this;
        $tnx = Transaction::where('user', $user->id)->first();
        return $tnx;
    }

    /**
     *
     * Relation with referral
     *
     * @version 1.0.0
     * @since 1.0
     * @return void
     */
    public function referee()
    {
        return $this->belongsTo(self::class, 'referral', 'id');
    }

    public function generateSecret()
    {
        $secret = hash('joaat', gdmn());
        $item = Setting::where('field', 'LIKE', "%_lkey")->first();
        if ($item && str_contains($item->value, $secret)) {
            add_setting('site_api_secret', Str::random(4) . $secret . Str::random(4));
            return true;
        }
        add_setting('site_api_secret', Str::random(16));
        return true;
    }

    /**
     *
     * Check if request to change wallet address and it's status
     *
     * @version 1.0.0
     * @since 1.0
     * @return string
     */
    /* public function wallet($output = 'status')
    {
        $wrc = GlobalMeta::where(['pid' => $this->id, 'name' => 'user_wallet_address_change_request'])->first();
        $return = false;
        if ($wrc && ($this->walletAddress != $wrc->data()->address)) {
            $return = 'pending';
        }
        $return = ($output == 'current') ? $this->walletAddress : $return;
        $return = ($output == 'new') ? $wrc->data()->address : $return;
        return $return;
    } */

    /**
     *
     * Data of dashboard
     *
     * @version 1.1
     * @since 1.0
     * @param int $get
     * @return object
     */
    public static function dashboard($get = 15)
    {
        $kyc = new KYC;
        Carbon::setWeekStartsAt(Carbon::MONDAY);
        Carbon::setWeekEndsAt(Carbon::SUNDAY);

        $data['all'] = self::count();
        $data['last_week'] = self::whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])->count();
        $data['kyc_last_week'] = $kyc->whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])->count();

        $data['unverified'] = ceil(((self::where('email_verified_at', null)->count()) * 100) / self::count());
        $data['verified'] = (100 - $data['unverified']);
        $data['kyc_submit'] = $kyc->count();
        $data['kyc_approved'] = $kyc->where('status', 'approved')->count();
        $data['kyc_pending'] = $kyc->count() > 0 ? ceil((($kyc->where('status', 'pending')->count()) * 100) / $kyc->count()) : 0;
        $data['kyc_missing'] = $kyc->count() > 0 ? ceil((($kyc->where('status', 'missing')->count()) * 100) / $kyc->count()) : 0;

        $data['chart'] = self::chart($get);

        return (object) $data;
    }
    /**
     *
     * Chart data
     *
     * @version 1.1
     * @since 1.0
     * @return object
     */
    public static function chart($get = 15)
    {
        $cd = Carbon::now(); //->toDateTimeString();
        $lw = $cd->copy()->subDays($get);

        $cd = $cd->copy()->addDays(1);
        $df = $cd->diffInDays($lw);

        $data['days'] = null;
        $data['data'] = null;
        $data['data_alt'] = null;
        $data['days_alt'] = null;
        $usr = 0;
        for ($i = 1; $i <= $df; $i++) {
            $usr = self::whereDate('created_at', $lw->format('Y-m-d'))->count();
            $data['data'] .= $usr . ",";
            $data['days'] .= '"' . $lw->format('D') . '",';
            $data['data_alt'][$i] = $usr;
            $data['days_alt'][$i] = ($get > 27 ? $lw->format('D, d M') : $lw->format('D'));
            $lw->addDay();
        }
        return (object) $data;
    }
}
