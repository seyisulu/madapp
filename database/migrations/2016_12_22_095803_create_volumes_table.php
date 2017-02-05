<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVolumesTable extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    Schema::create('volumes', function (Blueprint $table) {
      $table->increments('id');
      $table->integer('comic_id')->unsigned();
      $table->integer('number')->unsigned();
      $table->string('name', 191)->nullable();
      $table->string('slug', 191)->nullable();
      $table->string('image', 191);
      $table->boolean('live');
      $table->timestamps();
      $table->softDeletes();

      $table->foreign('comic_id')->references('id')->on('comics')->onDelete('cascade');
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists('volumes');
  }
}
