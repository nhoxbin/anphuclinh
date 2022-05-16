<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('phone')->unique()->nullable();
            $table->string('email')->unique()->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('dateOfBirth')->nullable();
            $table->dateTime('lastLogin')->nullable();
            $table->foreignId('role_id')->constrained()->nullable()->cascadeOnUpdate()->nullOnDelete();
            $table->unsignedDouble('cash')->default(0);
            $table->unsignedInteger('point')->default(0);

            $table->unsignedInteger('province_code')->nullable();
            $table->foreign('province_code')->references('code')->on('provinces')->onUpdate('cascade');

            $table->integer('google2fa')->default(0);
            $table->text('google2fa_secret')->nullable();

            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
