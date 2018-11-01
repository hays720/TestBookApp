<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TestApp extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('testApp', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('Author');
            $table->string('Title');
            $table->integer('Pages');
            $table->text('Disc');
            $table->string('Image');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('testApp');
    }
}
