<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('family_tree', function (Blueprint $table) {
            $table->id();
            $table->boolean('gender_id')->unsigned();
            $table->bigInteger('father_id', false)->nullable();
            $table->bigInteger('mother_id', false)->nullable();
            $table->bigInteger('parent_id', false)->nullable();
            $table->bigInteger('product_id', false)->nullable();
            $table->bigInteger('manager_id', false)->nullable();
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
        Schema::dropIfExists('family_tree');
    }
};
