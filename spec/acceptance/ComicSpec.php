<?php

use Kahlan\Plugin\Monkey;
use Sofa\LaravelKahlan\Env;
use Illuminate\Contracts\Foundation\Application;

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

describe('Comics Test', function () {

  beforeAll(function () {
    $this->laravel->artisan('migrate');
    $this->laravel->artisan('db:seed');
  });

  using(['database transactions'], function () {

    it('verifies that the comic index lists comics', function () {
      expect($this->laravel
                  ->get('/comics')
                  ->see('Mad Comics')
                  ->assertResponseOk())->toBeTruthy();
    });
  });
});
