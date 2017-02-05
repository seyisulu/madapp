/* jshint esversion: 6 */

const elixir = require('laravel-elixir');

require('laravel-elixir-vue-2');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for your application as well as publishing vendor resources.
 |
 */

elixir((mix) => {
  mix
   .copy('resources/assets/js/masonry.pkgd.min.js', 'public/js/masonry.pkgd.min.js')//-
   .copy('resources/assets/img', 'public/img')//-
   .copy('resources/assets/favicon', 'public/favicon')//-
   .copy('resources/assets/favicon/favicon.ico', 'public/favicon.ico')//-
   .copy('resources/assets/semantic/dist/themes/default/assets', 'public/build/css/themes/default/assets')//-
   .copy('resources/assets/semantic/dist/semantic.min.js', 'public/js/semantic.min.js')//-
   .copy('resources/assets/semantic/dist/semantic.css', 'resources/assets/css/semantic.css')//-
   .styles(['semantic.css', 'main.css']) //public/css/all.css
   .webpack('main.js')
   .webpack('app.js')
   .combine([
     'public/js/main.js',
     'public/js/masonry.pkgd.min.js',
     'public/js/semantic.min.js',
     'public/js/app.js'
   ], 'public/js/all.js') //all.js
   .version(['css/all.css', 'js/all.js']);
  //.phpUnit();
});
