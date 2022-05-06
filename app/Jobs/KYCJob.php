<?php

namespace App\Jobs;

use App\Models\KYC;
use App\Services\KYCService;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class KYCJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $kuser;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(KYC $kuser)
    {
        $this->kuser = $kuser;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle(KYCService $k_service)
    {
        $k_service->handle($this->kuser);
    }
}
