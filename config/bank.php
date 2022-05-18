<?php

return [
    'endpoint' => 'https://api.web2m.com/historyapiacbv3/' . env('BANK_PASSWORD', 'PasswordACB') . '/' . env('BANK_ACCOUNT_NUMBER', 'AccountNumber') . '/' . env('BANK_TOKEN', 'TokenACB')
];
