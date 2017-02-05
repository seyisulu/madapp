<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIssuesTable extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    Schema::create('issues', function (Blueprint $table) {
      $table->increments('id');
      $table->integer('volume_id')->unsigned();
      $table->integer('number')->unsigned();
      $table->string('name', 191)->nullable();
      $table->string('slug', 191)->nullable();
      $table->string('image', 191);
      $table->integer('views')->unsigned();
      $table->boolean('live');
      $table->timestamps();
      $table->softDeletes();

      $table->foreign('volume_id')->references('id')->on('volumes')->onDelete('cascade');
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists('issues');
  }
}
