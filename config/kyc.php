<?php

$enviroment = env('KYC_DEBUG', false) ? 'cloud' : 'demo';

return [
    'key'      => env('KYC_KEY', ''),
    'secret'   => env('KYC_SECRET', ''),
    'auth'     => 'Authorization: Basic ' . base64_encode(env('KYC_KEY', '') . ':' . env('KYC_SECRET', '')),
    'endpoint' => 'https://' . $enviroment . '.computervision.com.vn',
];
