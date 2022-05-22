<?php

return [
    'endpoint' => 'https://api.web2m.com/historyapiacbv3/' . env('BANK_PASSWORD', 'PasswordACB') . '/' . env('BANK_ACCOUNT_NUMBER', 'AccountNumber') . '/' . env('BANK_TOKEN', 'TokenACB'),
    'name' => env('BANK_NAME', 'Ngân hàng TMCP ACB'),
    'owner' => env('BANK_OWNER_NAME', 'Đỗ Văn Hà'),
    'number' => env('BANK_ACCOUNT_NUMBER', '12226668888')
];
