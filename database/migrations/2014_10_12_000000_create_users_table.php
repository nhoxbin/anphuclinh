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
            $table->string('status')->default('active');
            $table->string('mobile')->nullable();
            $table->string('dateOfBirth')->nullable();
            $table->dateTime('lastLogin');
            $table->enum('role', ['admin', 'manager', 'user'])->default('user');
            $table->unsignedDouble('cash')->default(0);
            $table->unsignedInteger('point')->default(0);
            $table->foreignId('province_id')->constrained()->cascadeOnUpdate();
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
