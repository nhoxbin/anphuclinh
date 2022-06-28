<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\GiftTransaction;
use Illuminate\Http\Request;

class GiftTransactionController extends Controller
{
    public function index(Request $request, $status = '')
    {
        $per_page = 20;
        $order_by = 'updated_at';
        $ordered  = 'DESC';

        $statuses = [];
        array_push($statuses, $status);
        if (empty($status)) {
            $statuses = ['pending', 'rewarded'];
        }
        $trnxs = GiftTransaction::with('user', 'product', 'gift')
            ->whereIn('meta->status', $statuses)
            ->orderBy($order_by, $ordered)
            ->paginate($per_page);

        $is_page = (empty($status) ? 'all' : $status);
        $pagi = $trnxs->appends(request()->all());
        return view('admin.gift-transactions', compact('trnxs', 'is_page', 'pagi'));
    }

    public function update(Request $request, GiftTransaction $gift_transaction)
    {
        if (empty($request->message)) {
            return response()->error('Tin nhắn là bắt buộc!');
        }
        if ($gift_transaction->meta['status'] == 'rewarded') {
            return response()->success(['title' => 'Thành công!', 'msg' => __('This gift has been confirmed!')]);
        }
        $meta = $gift_transaction->meta;
        $meta['status'] = 'rewarded';
        $meta['message'] = $request->message;
        $gift_transaction->meta = $meta;
        $gift_transaction->save();

        return response()->success(['reload' => true, 'title' => 'Thành công!', 'message' => __('Reward confirmed! :message', ['message' => $meta['message']])]);
    }

    public function destroy(GiftTransaction $gift_transaction)
    {
        $gift_transaction->delete();
        return response()->success(['title' => 'Thành công!', 'msg' => __('Transaction deleted!')]);
    }
}
