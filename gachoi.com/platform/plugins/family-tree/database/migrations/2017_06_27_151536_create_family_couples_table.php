<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('family_couples', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('husband_id');
            $table->bigInteger('wife_id');
            $table->date('marriage_date')->nullable();
            $table->date('divorce_date')->nullable();
            $table->bigInteger('product_id')->nullable();
            $table->timestamps();
            $table->unique(['husband_id', 'wife_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('couples');
    }
};
