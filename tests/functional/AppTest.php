<?php

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class AppTest extends TestCase
{
    /**
     * Tests home page shows Mad Comics.
     *
     * @return void
     */
    public function testHomePageShowsMadComics()
    {
        $this->visit('/')
             ->see('Mad Comics');
    }
}
