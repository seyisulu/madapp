<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use MadComics\Models\Comic;
use MadComics\Models\Volume;

class VolumeSeeder extends Seeder
{
  /**
   * Run the volume table seeds.
   *
   * @return void
   */
  public function run()
  {
    $comics = Comic::all();
    foreach ($comics as $comic) {
      $volume_count = mt_rand (1, 4);
      factory(Volume::class, $volume_count)->create([
        'comic_id' => $comic->id,
      ]);
    }
  }
}
