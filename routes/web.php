<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('landing');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::pattern('comicSlug', '[a-z\-]+');
Route::pattern('volumeId', '\d+');
Route::pattern('issueId', '\d+');
Route::get('/comics/{comicSlug}/{volumeId}/{issueId}', 'ComicController@read')->name('read');

Route::resource('comics', 'ComicController', [ 'only' => ['index', 'show']]);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
