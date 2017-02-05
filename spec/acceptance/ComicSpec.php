<?php

use Kahlan\Plugin\Monkey;
use Sofa\LaravelKahlan\Env;
use Illuminate\Contracts\Foundation\Application;

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

describe('Comics Test', function () {

  beforeAll(function () {
    //$this->laravel->artisan('migrate');
    //$this->laravel->artisan('db:seed');
  });

  //using(['database transactions'], function () {

    fit('verifies that the comics page lists comics', function () {

    });
  //});
});
