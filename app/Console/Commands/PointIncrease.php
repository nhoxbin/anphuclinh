<?php

namespace App\Console\Commands;

use App\Helpers\PointCalc;
use Illuminate\Console\Command;

class PointIncrease extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'poin:increase';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Point Increasement';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        file_put_contents(PointCalc::getFile(), PointCalc::getPoint('increase'));
        return 0;
    }
}
