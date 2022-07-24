<?php

namespace App\Models;

use Bavix\Wallet\Models\Transaction as BavixTransaction;

class Transaction extends BavixTransaction
{
    protected $casts = ['meta' => 'json'];
}
