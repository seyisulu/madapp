<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use MadComics\Models\Comic;

class ComicSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    factory(Comic::class, 12)->create();
  }
}
