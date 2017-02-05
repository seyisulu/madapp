<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use MadComics\Models\Issue;
use MadComics\Models\Page;

class PageSeeder extends Seeder
{
  /**
   * Run the page table seeds.
   *
   * @return void
   */
  public function run()
  {
    $issues = Issue::all();
    foreach ($issues as $issue) {
      $i = 0;
      $page_count = mt_rand (4, 12);
      factory(Page::class, $page_count)->create([
        'issue_id' => $issue->id,
      ]);
    }
  }
}
