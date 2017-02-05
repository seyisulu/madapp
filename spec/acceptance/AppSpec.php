<?php

use Kahlan\Plugin\Monkey;
use Sofa\LaravelKahlan\Env;
use Illuminate\Contracts\Foundation\Application;

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

describe('Mad Comics App', function () {

    /*
    |--------------------------------------------------------------------------
    | Let's (re)create the DB as starting point,
    | because it gets wiped at the end, when
    | we use database migrations wrappers.
    |--------------------------------------------------------------------------
    */
    beforeAll(function () {
        $this->laravel->artisan('migrate');
        $this->laravel->artisan('db:seed');
    });

    using(['database transactions'], function () {

        it('verifies that the homepage loads properly', function () {
            expect($this->laravel
                        ->get('/')
                        ->see('Mad Comics')
	                ->assertResponseOk())->toBeTruthy();
        });
        
    });
});
