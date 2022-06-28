<?php

declare(strict_types=1);

use Bavix\Wallet\Internal\Assembler\AvailabilityDtoAssembler;
use Bavix\Wallet\Internal\Assembler\BalanceUpdatedEventAssembler;
use Bavix\Wallet\Internal\Assembler\TransactionDtoAssembler;
use Bavix\Wallet\Internal\Assembler\TransactionQueryAssembler;
use Bavix\Wallet\Internal\Assembler\TransferDtoAssembler;
use Bavix\Wallet\Internal\Assembler\TransferLazyDtoAssembler;
use Bavix\Wallet\Internal\Assembler\TransferQueryAssembler;
use Bavix\Wallet\Internal\Events\BalanceUpdatedEvent;
use Bavix\Wallet\Internal\Events\WalletCreatedEvent;
use Bavix\Wallet\Internal\Repository\TransactionRepository;
use Bavix\Wallet\Internal\Repository\TransferRepository;
use Bavix\Wallet\Internal\Repository\WalletRepository;
use Bavix\Wallet\Internal\Service\ClockService;
use Bavix\Wallet\Internal\Service\DatabaseService;
use Bavix\Wallet\Internal\Service\DispatcherService;
use Bavix\Wallet\Internal\Service\JsonService;
use Bavix\Wallet\Internal\Service\LockService;
use Bavix\Wallet\Internal\Service\MathService;
use Bavix\Wallet\Internal\Service\StorageService;
use Bavix\Wallet\Internal\Service\TranslatorService;
use Bavix\Wallet\Internal\Service\UuidFactoryService;
use Bavix\Wallet\Internal\Transform\TransactionDtoTransformer;
use Bavix\Wallet\Internal\Transform\TransferDtoTransformer;
use Bavix\Wallet\Models\Transaction;
use Bavix\Wallet\Models\Transfer;
use Bavix\Wallet\Models\Wallet;
use Bavix\Wallet\Services\AssistantService;
use Bavix\Wallet\Services\AtmService;
use Bavix\Wallet\Services\AtomicService;
use Bavix\Wallet\Services\BasketService;
use Bavix\Wallet\Services\BookkeeperService;
use Bavix\Wallet\Services\CastService;
use Bavix\Wallet\Services\ConsistencyService;
use Bavix\Wallet\Services\DiscountService;
use Bavix\Wallet\Services\ExchangeService;
use Bavix\Wallet\Services\PrepareService;
use Bavix\Wallet\Services\PurchaseService;
use Bavix\Wallet\Services\RegulatorService;
use Bavix\Wallet\Services\TaxService;
use Bavix\Wallet\Services\WalletService;

return [

];
