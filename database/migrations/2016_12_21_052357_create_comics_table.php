<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('comics', function (Blueprint $table) {
        $table->increments('id');
        $table->string('name', 191)->unique();
        $table->string('slug', 191)->unique();
        $table->string('image', 191);
        $table->text('synopsis');
        $table->integer('views')->unsigned();
        $table->boolean('live');
        $table->timestamps();
        $table->softDeletes();
      });
  }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comics');
    }
}
