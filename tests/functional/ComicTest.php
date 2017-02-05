<?php

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

use MadComics\Models\Comic;

class ComicTest extends TestCase
{
  use DatabaseMigrations, DatabaseTransactions, WithoutMiddleware;

  /**
   * Tests that comic index shows comic list.
   *
   * @return void
   */
  public function testComicIndexShowsComicList()
  {
    factory(Comic::class, 1)->create();
    $comic = Comic::first();
    $this->visit('/')
         ->click('Comics')
         ->seePageIs('/comics')
         ->see($comic->name);
  }

  /**
   * Tests that show single comic works.
   *
   * @return void
   */
  public function testShowSingleComic()
  {
    factory(Comic::class, 1)->create();
    $comic = Comic::first();
    $this->visitRoute('comics.show', ['id' => $comic->id])
         ->see($comic->name);
  }
}
