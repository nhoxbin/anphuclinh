<?php

namespace App\Http\Controllers\User;
/**
 * Transaction Controller
 *
 *
 * @package TokenLite
 * @author Softnio
 * @version 1.0.0
 */
use Auth;
use App\Models\IcoStage;
use App\PayModule\Module;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Notifications\TnxStatus;
use App\Http\Controllers\Controller;

class TransactionController extends Controller
{
    public function index(Request $request)
    {
        $payable_ids = $request->user()->group_ids;
        $trnxs = Transaction::where(['payable_type' => 'App\\Models\\User'])
                            ->whereIn('payable_id', $payable_ids)
                            ->where('type', 'deposit')
                            ->where('meta->status', '<>', null)
                            ->where('amount', '>', 0)
                            ->orderBy('created_at', 'DESC')
                            ->get();
        // $transfers = Transaction::get_by_own(['tnx_type' => 'deposit'])->get()->count();
        // $referrals = Transaction::get_by_own(['tnx_type' => 'referral'])->get()->count();
        // $bonuses   = Transaction::get_by_own(['tnx_type' => 'bonus'])->get()->count();
        // $refunds   = Transaction::get_by_own(['tnx_type' => 'refund'])->get()->count();
        $has_trnxs = (object) [
            // 'transfer' => 10, // ($transfers > 0) ? true : false,
            // 'referral' => 10, // ($referrals > 0) ? true : false,
            // 'bonus' => 10, // ($bonuses > 0) ? true : false,
            // 'refund' => 10, // ($refunds > 0) ? true : false
        ];
        return view('user.transactions', compact('trnxs'));
    }

    public function show(Request $request, $id='')
    {
        $module = new Module();
        $tid = ($id == '' ? $request->input('tnx_id') : $id);
        if ($tid != null) {
            $tnx = Transaction::find($tid);
            return $module->show_details($tnx);
        } else {
            return false;
        }
    }

    public function update(Transaction $transaction)
    {
        $transaction->update(['amount' => 0, 'confirmed' => 0]);
        return response()->success(['title' => __('Success'), 'msg' => __('Order cancelled')]);
    }

    public function destroy(Request $request, $id='')
    {
        $tid = ($id == '' ? $request->input('tnx_id') : $id);
        if ($tid != null) {
            $tnx = Transaction::FindOrFail($tid);
            if ($tnx) {
                $old = $tnx->status;
                $tnx->status = 'deleted';
                $tnx->save();
                if ($old == 'pending' || $old == 'onhold') {
                    IcoStage::token_add_to_account($tnx, 'sub');
                }
                $ret['msg'] = 'error';
                $ret['message'] = __('messages.delete.delete', ['what'=>'Transaction']);
            } else {
                $ret['msg'] = 'warning';
                $ret['message'] = 'This transaction is not available now!';
            }
        } else {
            $ret['msg'] = 'warning';
            $ret['message'] = __('messages.delete.failed', ['what'=>'Transaction']);
        }

        if ($request->ajax()) {
            return response()->json($ret);
        }
        return back()->with([$ret['msg'] => $ret['message']]);
    }
}
