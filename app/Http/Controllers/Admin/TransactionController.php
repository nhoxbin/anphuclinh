<?php

namespace App\Http\Controllers\Admin;
/**
 * Transactions Controller
 *
 * @package TokenLite
 * @author Softnio
 * @version 1.1.0
 */
use Auth;
use Validator;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Setting;
use App\Models\IcoStage;
// use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Models\PaymentMethod;
use App\Helpers\ReferralHelper;
use App\Notifications\TnxStatus;
use App\Notifications\Refund;
use App\Http\Controllers\Controller;
use App\Helpers\TokenCalculate as TC;
use App\Models\Package;
use App\Models\Product;
use App\Services\UserPurchasePackageProcessor;
use App\Services\UserPurchaseProductProcessor;
use Bavix\Wallet\Models\Transaction;

class TransactionController extends Controller
{
    public function index(Request $request, $status = '')
    {
        $per_page = 20;
        $order_by = 'updated_at';
        $ordered  = 'DESC';

        if($status=='referral' || $status=='bonus') {
            $trnxs = Transaction::where('tnx_type', $status)->orderBy($order_by, $ordered)->paginate($per_page);
        } elseif ($status == 'bonuses') {
            // $trnxs = Transaction::whereNotIn('tnx_type', ['withdraw'])->whereIn('tnx_type', ['referral', 'bonus'])->orderBy($order_by, $ordered)->paginate($per_page);
            $trnxs = Transaction::where(['type' => 'deposit', 'confirmed' => 1, 'meta->type' => 'bonus'])->orderBy($order_by, $ordered)->paginate($per_page);
        } elseif ($status == 'approved') {
            // $trnxs = Transaction::whereNotIn('tnx_type', ['withdraw', 'bonus', 'referral'])->where('status', $status)->orderBy($order_by, $ordered)->paginate($per_page);
            $trnxs = Transaction::with('payable')->where('confirmed', 1)->whereIn('type', ['deposit', 'withdraw'])->whereIn('meta->type', ['purchase', 'withdraw'])->orderBy($order_by, $ordered)->paginate($per_page);
        }  elseif ($status == 'pending') {
            $trnxs = Transaction::where(['type' => 'deposit', 'confirmed' => 0, 'meta->type' => 'purchase'])->where('amount', '>', 0)->orderBy($order_by, $ordered)->paginate($per_page);
        } elseif ($status == 'withdraw') {
            $trnxs = Transaction::where(['type' => 'withdraw', 'confirmed' => 0])->orderBy($order_by, $ordered)->paginate($per_page);
        } elseif ($status != null) {
            // $trnxs = Transaction::whereNotIn('tnx_type', ['withdraw'])->where('status', $status)->orderBy($order_by, $ordered)->paginate($per_page);
            $trnxs = Transaction::where(['type' => 'deposit', 'meta->type' => 'purchase'])->where('amount', '>', 0)->orderBy($order_by, $ordered)->paginate($per_page);
        } else {
            $trnxs = Transaction::where(['type' => 'deposit', 'meta->type' => 'purchase'])->where('amount', '>', 0)->orderBy($order_by, $ordered)->paginate($per_page);
        }

        if ($request->s) {
            $trnxs = Transaction::where(['type' => 'deposit', 'meta->type' => 'purchase'])
                ->where('amount', '>', 0)
                ->where(function($q) use ($request) {
                    $q->orWhere('id', $request->s);
                })->orderBy($order_by, $ordered)->paginate($per_page);
        }
        if ($request->filter) {
            $trnxs = Transaction::AdvancedFilter($request)
                                ->orderBy($order_by, $ordered)->paginate($per_page);
        }

        $is_page = (empty($status) ? 'all' : $status);
        // $stages = IcoStage::whereNotIn('status', ['deleted'])->get();
        $users = User::whereRelation('roles', 'name', '<>', 'super_admin')->get();
        $pagi = $trnxs->appends(request()->all());
        return view('admin.transactions', compact('trnxs', 'users', 'is_page', 'pagi'));
    }

    public function show($trnx_id = '')
    {
        if ($trnx_id == '') {
            return __('messages.wrong');
        } else {
            $trnx = Transaction::FindOrFail($trnx_id);
            return view('admin.trnx_details', compact('trnx'))->render();
        }
    }

    public function update(Request $request, Transaction $transaction)
    {
        $ret['msg'] = 'info';
        $ret['message'] = __('messages.nothing');

        if ($request->req_type != 'refund') {
            if ($transaction->confirmed) {
                $ret['msg'] = 'info';
                $ret['message'] = __('messages.trnx.admin.already_approved');
            } else {
                if ($request->status == 'approved') {
                    if ($transaction->type == 'withdraw') {
                        if ($transaction->payable->wallet->confirm($transaction)) {
                            $ret['msg'] = 'success';
                            $ret['message'] = __('messages.trnx.admin.approved');
                        } else {
                            $ret['msg'] = 'error';
                            $ret['message'] = __('Not Confirmed');
                        }
                    } else {
                        // deposit
                        $ret = $this->approved_tnx($transaction);
                    }
                } elseif ($request->status == 'rejected') {
                    $ret = $this->rejected_tnx($transaction);
                }
            }
        } elseif ($request->req_type == 'delete') {
            $ret = $this->deleted_tnx($transaction);
        } else {
            $ret = $this->refund($transaction, $request->message);
        }

        $ret['data'] = $transaction;
        if ($request->ajax()) {
            return response()->json($ret);
        }
        return back()->with([$ret['msg'] => $ret['message']]);
    }

    private function canceled_tnx($request, $trnx)
    {
        $ret['msg'] = 'warning';
        $ret['message'] = __('Unable to cancel the transaction, reload the page.');
        if ($trnx) {
            if($trnx->status == 'canceled' || $trnx->status == 'approved') {
                $ret['msg'] = 'info';
                $ret['message'] = ($trnx->status == 'approved') ? __('messages.trnx.admin.already_approved') : __('messages.trnx.admin.already_canceled');
                 return $ret;
            }

            if(in_array($trnx->status, ['onhold', 'pending'])){
                $trnx->status = 'canceled';
                $trnx->checked_by = json_encode(['name' => Auth::user()->name, 'id' => Auth::id()]);
                $trnx->checked_time = date('Y-m-d H:i:s');
                $trnx->save();
                IcoStage::token_add_to_account($trnx, 'sub');

                try {
                    $trnx->tnxUser->notify((new TnxStatus($trnx, 'rejected-user')));
                    $ret['msg'] = 'success';
                    $ret['message'] = __('messages.trnx.admin.canceled');
                } catch (\Exception $e) {
                    $ret['errors'] = $e->getMessage();
                    $ret['msg'] = 'warning';
                    $ret['message'] = __('messages.trnx.admin.canceled').' '.__('messages.email.failed');
                }
            }
        }
        return $ret;
    }

    private function approved_tnx(Transaction $transaction)
    {
        try {
            if (isset($transaction->meta['product_id'])) {
                $product = Product::find($transaction->meta['product_id']);
                $processor = new UserPurchaseProductProcessor;
            } elseif (isset($transaction->meta['package_id'])) {
                $product = Package::find($transaction->meta['package_id']);
                $processor = new UserPurchasePackageProcessor;
            }
            $processor->handle($transaction->payable, $transaction, $product, true);

            // $trnx->tnxUser->notify((new TnxStatus($trnx, 'successful-user')));
            $ret['msg'] = 'success';
            $ret['message'] = __('messages.trnx.admin.approved');
        } catch (\Exception $e) {
            $ret['errors'] = $e->getMessage();
            $ret['msg'] = 'warning';
            $ret['message'] = __('Unable to approve the transaction, reload the page.');
            // $ret['message'] = __('messages.trnx.admin.approved').' '.__('messages.email.failed');
        }
        return $ret;
    }

    private function rejected_tnx(Transaction $transaction)
    {
        $transaction->amount = 0;
        $transaction->save();
        return [
            'msg' => 'warning',
            'reload' => true,
            'message' => __('Successfully Rejected'),
        ];
    }

    private function deleted_tnx($trnx)
    {
        $ret['msg'] = 'warning';
        $ret['message'] = __('Unable to delete the transaction, reload the page.');

        if ($trnx) {
            if ($trnx->confirmed) {
                $ret['msg'] = 'info';
                $ret['message'] = ($trnx->status == 'approved') ? __('messages.trnx.admin.already_approved') : __('messages.trnx.admin.already_deleted');
                return $ret;
            }
            /* if ($trnx->status == 'canceled') {
                $trnx->status = 'deleted';
                $trnx->checked_by = json_encode(['name' => Auth::user()->name, 'id' => Auth::id()]);
                $trnx->checked_time = date('Y-m-d H:i:s');
                $trnx->save();
                $ret['msg'] = 'success';
                $ret['message'] = __('messages.trnx.admin.deleted');
            } else {
                $ret['msg'] = 'info';
                $ret['message'] = __('Cancel the transaction first.');
            } */
        }
        return $ret;
    }

    protected function refund(Transaction $transaction, $message = '')
    {
        $product = Product::find($transaction->meta['product_id']);
        $ret['msg'] = 'warning';
        if (!$product->is_combo) {
            $ret['message'] = 'Only refund combo';
        } elseif (isset($transaction->meta['status']) && $transaction->meta['status'] == 'refunded') {
            $ret['message'] = 'Giao dịch này đã được hoàn tiền!';
        } else {
            $ret = (new UserPurchaseProductProcessor)->refund($transaction->payable, $transaction, $product, $message);
        }
        $ret['reload'] = true;
        return $ret;
    }

    /**
     * Refund Email sent to user.
     *
     * @version 1.0.0
     * @since 1.1.2
     */
    protected function refund_email($refund, $transaction)
    {
        try {
            $refund->tnxUser->notify(new Refund($refund, $transaction));
            return true;
        } catch (\Exception $e) {
            // info($e->getMessage());
            return false;
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     * @version 1.2
     * @since 1.0
     * @return void
     */
    public function store(Request $request)
    {
        if (version_compare(phpversion(), '7.1', '>=')) {
            ini_set('precision', 17);
            ini_set('serialize_precision', -1);
        }
        $ret['msg'] = 'info';
        $ret['message'] = __('messages.nothing');
        $validator = Validator::make($request->all(), [
            'total_tokens' => 'required|integer|min:1',
        ], [
            'total_tokens.required' => "Token amount is required!.",
        ]);

        if ($validator->fails()) {
            if ($validator->errors()->has('total_tokens')) {
                $msg = $validator->errors()->first();
            } else {
                $msg = __('messages.form.wrong');
            }

            $ret['msg'] = 'warning';
            $ret['message'] = $msg;
        } else {
            $tc = new TC();
            $token = $request->input('total_tokens');
            $bonus_calc = isset($request->bonus_calc) ? true : false;
            $tnx_type = $request->input('type');
            $currency = strtolower($request->input('currency'));
            $currency_rate = Setting::exchange_rate($tc->get_current_price(), $currency);
            $base_currency = strtolower(base_currency());
            $base_currency_rate = Setting::exchange_rate($tc->get_current_price(), $base_currency);
            $all_currency_rate = json_encode(Setting::exchange_rate($tc->get_current_price(), 'except'));
            $added_time = Carbon::now()->toDateTimeString();
            $tnx_date   = $request->tnx_date.' '.date('H:i');

            // v1.2
            if($tnx_type=='purchase' && $bonus_calc==true) {
                $trnx_data = [
                    'token' => round($token, min_decimal()),
                    'bonus_on_base' => $tc->calc_token($token, 'bonus-base'),
                    'bonus_on_token' => $tc->calc_token($token, 'bonus-token'),
                    'total_bonus' => $tc->calc_token($token, 'bonus'),
                    'total_tokens' => $tc->calc_token($token),
                    'base_price' => $tc->calc_token($token, 'price')->base,
                    'amount' => round($tc->calc_token($token, 'price')->$currency, max_decimal()),
                ];
            } else {
                $trnx_data = [
                    'token' => round($token, min_decimal()),
                    'bonus_on_base' => 0,
                    'bonus_on_token' => 0,
                    'total_bonus' => 0,
                    'total_tokens' => round($token, min_decimal()),
                    'base_price' => $tc->calc_token($token, 'price')->base,
                    'amount' => round($tc->calc_token($token, 'price')->$currency, max_decimal()),
                ];
            }
            $save_data = [
                'created_at' => $added_time,
                'tnx_id' => set_id(rand(100, 999), 'trnx'),
                'tnx_type' => $tnx_type,
                'tnx_time' => ($request->tnx_date) ? _cdate($tnx_date)->toDateTimeString() : $added_time,
                'tokens' => $trnx_data['token'],
                'bonus_on_base' => $trnx_data['bonus_on_base'],
                'bonus_on_token' => $trnx_data['bonus_on_token'],
                'total_bonus' => $trnx_data['total_bonus'],
                'total_tokens' => $trnx_data['total_tokens'],
                'stage' => (int) $request->input('stage', active_stage()->id),
                'user' => (int) $request->input('user'),
                'amount' => $trnx_data['amount'],
                'receive_amount' => $request->input('amount') != '' ? $request->input('amount') : $trnx_data['amount'],
                'receive_currency' => $currency,
                'base_amount' => $trnx_data['base_price'],
                'base_currency' => $base_currency,
                'base_currency_rate' => $base_currency_rate,
                'currency' => $currency,
                'currency_rate' => $currency_rate,
                'all_currency_rate' => $all_currency_rate,
                'payment_method' => $request->input('payment_method', 'manual'),
                'payment_to' => '',
                'payment_id' => rand(1000, 9999),
                'details' => ($tnx_type =='bonus' ? 'Bonus Token' : 'Token Purchase'),
                'status' => 'onhold',
            ];

            $iid = Transaction::insertGetId($save_data);

            if ($iid != null) {
                $ret['msg'] = 'info';
                $ret['message'] = __('messages.trnx.manual.success');

                $address = $request->input('wallet_address');
                $transaction = Transaction::where('id', $iid)->first();
                $transaction->tnx_id = set_id($iid, 'trnx');
                $transaction->wallet_address = $address;
                $transaction->extra = ($address) ? json_encode(['address' => $address]) : null;
                $transaction->status = 'approved';
                $transaction->save();

                IcoStage::token_add_to_account($transaction, 'add');

                $transaction->checked_by = json_encode(['name' => Auth::user()->name, 'id' => Auth::id()]);

                $transaction->added_by = set_added_by(Auth::id(), Auth::user()->role);
                $transaction->checked_time = now();
                $transaction->save();
                // Start adding
                IcoStage::token_add_to_account($transaction, '', 'add');

                $ret['link'] = route('admin.transactions');
                $ret['msg'] = 'success';
                $ret['message'] = __('messages.token.success');
            } else {
                $ret['msg'] = 'error';
                $ret['message'] = __('messages.token.failed');
                Transaction::where('id', $iid)->delete();
            }
        }

        if ($request->ajax()) {
            return response()->json($ret);
        }
        return back()->with([$ret['msg'] => $ret['message']]);
    }

    /**
    * Adjustment modal function for token verified.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    * @version 1.0.0
    * @since 1.0
    * @return void
    */

    public function adjustment(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'tnx_id' => 'required|integer',
        ]);

        if ($validator->fails()) {
            if ($validator->errors()->has('tnx_id')) {
                $msg = $validator->errors()->first();
            } else {
                $msg = __('messages.form.wrong');
            }

            $ret['msg'] = 'warning';
            $ret['message'] = $msg;
        } else {
            $trnx = Transaction::findOrFail($request->tnx_id);
            $ret['modal'] = view('modals.adjustment_token', compact('trnx'))->render();
        }
        if ($request->ajax()) {
            return response()->json($ret);
        }
        return back()->with([$ret['msg'] => $ret['message']]);
    }

}
