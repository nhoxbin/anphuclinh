<?php

namespace App\Services;

use App\Http\Controllers\Admin\KycController;
use App\Models\KYC;
use Illuminate\Http\Request;
use Ixudra\Curl\Facades\Curl;

class KYCService
{
    public function handle($kuser) {
        try {
            $file_info = pathinfo(storage_path('app/' . $kuser->document));
            $file_info2 = pathinfo(storage_path('app/' . $kuser->document2));
            $file_info3 = pathinfo(storage_path('app/' . $kuser->document3));

            // curl để lấy thông tin trên mặt trước của cmnd/cccd
            $curl_card = Curl::to(config('kyc.endpoint') . '/api/v2/ekyc/cards?format_type=file')
                ->withHeader(config('kyc.auth'))
                ->withFile('img1', storage_path('app/' . $kuser->document), $file_info['extension'])
                ->withFile('img2', storage_path('app/' . $kuser->document2), $file_info2['extension'])
                ->containsFile()
                ->asJsonResponse()
                ->post();

            $msg = false;
            if ($curl_card->errorCode == 0) {
                if (isset($curl_card->Exception)) {
                    $msg = $curl_card->Exception;
                } else {
                    foreach ($curl_card->data as $value) {
                        if ($value->invalidCode == 0) {
                            if (str_ends_with($value->type, 'id_card_front')) {
                                $info = $value->info;
                                if ($info->id_confidence < 0.85
                                || $info->name_confidence < 0.85
                                || $info->dob_confidence < 0.85) {
                                    $msg = 'Thông tin trên giấy tờ không rõ, vui lòng cung cấp lại!';
                                } else {
                                    if ($info->id != $kuser->documentId
                                    || mb_strtolower($info->name) != mb_strtolower($kuser->firstName)
                                    || $info->dob != $kuser->documentDob
                                    ) {
                                        $msg = 'Thông tin trên giấy tờ không đúng với thông tin bạn cung cấp';
                                    } else {
                                        $dob = explode('-', $info->dob);
                                        $documentDob = date('m/d/Y', mktime(0,0,0, $dob[0], $dob[1], $dob[2]));
                                        $duplicate_kyc = KYC::where([
                                            'documentId' => $info->id,
                                            'firstName'  => $info->name,
                                            'dob'        => $documentDob,
                                        ])->latest()->first();
                                        if (!$duplicate_kyc || $duplicate_kyc->status == 'pending') {
                                            // search face trên hệ thống kyc xem nếu trùng thì ko cho tiếp tục kyc
                                            $curl_search = Curl::to(config('kyc.endpoint') . '/api/v2/face_search/search')
                                                ->withHeader(config('kyc.auth'))
                                                ->withContentType('application/json')
                                                ->withData([
                                                    'image' => ['base64' => base64_encode(file_get_contents(storage_path('app/' . $kuser->document3)))]
                                                ])
                                                ->asJson()
                                                ->post();

                                            if ($curl_search->errorCode != 0) {
                                                $msg = __($curl_search->error_message);
                                            } else {
                                                /* if (!empty($curl_search->result[0]->result_data)) {
                                                    $msg = 'Bạn đã KYC trước đó, vui lòng kiểm tra lại!';
                                                } */
                                            }
                                        } else {
                                            $msg = 'Thông tin trên giấy tờ đã có trên hệ thống, không thể xác thực!';
                                        }
                                    }
                                }
                            }
                        } else {
                            $msg = __($curl_card->invalidMessage);
                        }
                    }
                }
            } else {
                $msg = __($curl_card->errorMessage);
            }

            // Thêm ảnh
            if (!$msg) {
                $curl_images = Curl::to(config('kyc.endpoint') . '/api/v2/face_search/images')
                    ->withHeader(config('kyc.auth'))
                    ->withContentType('application/json')
                    ->withData([
                        'image' => [
                            "base64" => base64_encode(file_get_contents(storage_path('app/' . $kuser->document3))),
                            "metadata" => [
                                'documentId' => $kuser->documentId,
                                'firstName'  => $kuser->firstName,
                                'dob'        => $kuser->documentDob
                            ]
                        ]
                    ])
                    ->containsFile()
                    ->asJson()
                    ->post();
                if ($curl_images->errorCode == 0) {
                    if (empty($curl_images->result)) {
                        $msg = 'Có lỗi xảy ra khi thêm dữ liệu ảnh, vui lòng liên hệ Admin để fix! Cảm ơn bạn đã sử dụng hệ thống.';
                    }
                } else {
                    $msg = __($curl_images->error_message);
                }
            }

            if (!$msg) {
                $curl_face_matching = Curl::to(config('kyc.endpoint') . '/api/v2/ekyc/face_matching?' . http_build_query([
                    'type1' => 'portrait',
                    'format_type' => 'file',
                ]))->withHeader(config('kyc.auth'))
                    ->withFile('img1', storage_path('app/' . $kuser->document), $file_info['extension'])
                    ->withFile('img2', storage_path('app/' . $kuser->document3), $file_info3['extension'])
                    ->containsFile()
                    ->asJsonResponse()
                    ->post();

                if ($curl_face_matching->errorCode == 0) {
                    if ($curl_face_matching->data->match != 1 || ((float) $curl_face_matching->data->matching) < 80) {
                        $msg = __($curl_face_matching->data->invalidMessage);
                    }
                } else {
                    $msg = __($curl_face_matching->errorMessage);
                }
            }

            if (!$msg) {
                $kuser->meta = json_encode([
                    'card' => $curl_card->data,
                    'image' => $curl_images->result
                ]);
                $kuser->save();
            }

            $request = new Request();
            $request->merge([
                'controller_ajax' => true,
                'req_type' => 'update_kyc_status',
                'kyc_id' => $kuser->id,
                'notes' => __($msg ?? 'Có lỗi xảy ra khi KYC. Vui lòng liên hệ Admin để được giải quyết.'),
                'status' => !$msg ? 'approved' : 'rejected'
            ]);
            $kyc_controller = new KycController();
            $kyc_controller->update($request);
        } catch (\Exception $e) {
            dd($e->getMessage());
        }
    }
}
