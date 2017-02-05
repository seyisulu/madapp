<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use MadComics\Models\Issue;
use MadComics\Models\Volume;

class IssueSeeder extends Seeder
{
  /**
   * Run the issue table seeds.
   *
   * @return void
   */
  public function run()
  {
    $volumes = Volume::all();
    foreach ($volumes as $volume) {
      $issue_count = mt_rand (1, 12);
      factory(Issue::class, $issue_count)->create([
        'volume_id' => $volume->id,
      ]);
    }
  }
}
