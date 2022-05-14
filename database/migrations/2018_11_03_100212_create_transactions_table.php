<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->increments('id');
            $table->uuid('tnx_id');
            $table->enum('tnx_type', ['purchase', 'withdraw']);
            $table->foreign('user_id')->constrained()->cascadeOnUpdate();
            $table->double('amount')->nullable();
            $table->string('wallet_address')->nullable(); // From Payment Controller
            $table->string('payment_method')->nullable(); // Selected Method
            $table->string('payment_id')->default(''); // From Payment Controller
            $table->string('details')->default('');
            $table->text('extra')->nullable();
            $table->enum('status', ['approved', 'canceled', 'pending', 'onhold']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transactions');
    }
}
