<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(MadComics\Models\User::class, function (Faker\Generator $faker) {
  static $password;
  return [
    'name' => $faker->name,
    'email' => $faker->unique()->safeEmail,
    'phone' => $faker->phoneNumber,
    'admin' => $faker->boolean(10),
    'optin' => $faker->boolean(90),
    'password' => $password ?: $password = bcrypt('secret'),
    'remember_token' => str_random(10),
  ];
});

$factory->define(MadComics\Models\Comic::class, function (Faker\Generator $faker) {
  $name = $faker->sentence(5);
  return [
    'name' => $name,
    'slug' => str_slug($name),
    'image' => 'comics/0/cover.jpg',
    'synopsis' => $faker->paragraph(),
    'views' => $faker->numberBetween(1, 1000),
    'live' => $faker->boolean(90),
  ];
});

$factory->define(MadComics\Models\Volume::class, function (Faker\Generator $faker) {
  $name = $faker->sentence(5);
  static $number = 1;
  return [
    'name' => $name,
    'slug' => str_slug($name),
    'image' => 'comics/0/volume.jpg',
    'number' => $number++,
    'live' => $faker->boolean(100),
  ];
});

$factory->define(MadComics\Models\Issue::class, function (Faker\Generator $faker) {
  $name = $faker->sentence(5);
  static $number = 1;
  return [
    'name' => $name,
    'slug' => str_slug($name),
    'image' => 'comics/0/cover.jpg',
    'number' => $number++,
    'views' => $faker->numberBetween(1, 100),
    'live' => $faker->boolean(100),
  ];
});

$factory->define(MadComics\Models\Page::class, function (Faker\Generator $faker) {
  static $number = 1;
  return [
    'image' => 'comics/0/page.jpg',
    'number' => $number++,
    'live' => $faker->boolean(100),
  ];
});
