<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHospitalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hospitals', function (Blueprint $table) {
            $table->id('id');
            $table->string('name');
            $table->Integer('phone');
            $table->string('address');
            $table->string('City');
            $table->Integer('A+');
            $table->Integer('A-');
            $table->Integer('B+');
            $table->Integer('B-');
            $table->Integer('AB+');
            $table->Integer('AB-');
            $table->Integer('O+');
            $table->Integer('O-');
            $table->float('price');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hospitals');
    }
}
