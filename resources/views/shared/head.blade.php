<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
<meta name="csrf-token" content="{{ csrf_token() }}">
<title>{{ config('app.name', 'Laravel') }} - @yield('title')</title>
<link rel="shortcut icon" href="/favicon/favicon.ico">
<link rel="icon" sizes="16x16 32x32 64x64" href="/favicon/favicon.ico">
<link rel="icon" type="image/png" sizes="196x196" href="/favicon/favicon-192.png">
<link rel="icon" type="image/png" sizes="160x160" href="/favicon/favicon-160.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon/favicon-96.png">
<link rel="icon" type="image/png" sizes="64x64" href="/favicon/favicon-64.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16.png">
<link rel="apple-touch-icon" href="/favicon/favicon-57.png">
<link rel="apple-touch-icon" sizes="114x114" href="/favicon/favicon-114.png">
<link rel="apple-touch-icon" sizes="72x72" href="/favicon/favicon-72.png">
<link rel="apple-touch-icon" sizes="144x144" href="/favicon/favicon-144.png">
<link rel="apple-touch-icon" sizes="60x60" href="/favicon/favicon-60.png">
<link rel="apple-touch-icon" sizes="120x120" href="/favicon/favicon-120.png">
<link rel="apple-touch-icon" sizes="76x76" href="/favicon/favicon-76.png">
<link rel="apple-touch-icon" sizes="152x152" href="/favicon/favicon-152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/favicon/favicon-180.png">
<meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="msapplication-TileImage" content="favicon/favicon-144.png">
<meta name="msapplication-config" content="favicon/browserconfig.xml">
<link rel="stylesheet" href="{{ elixir('css/all.css') }}" type="text/css"/>
<style>
#snow{
	background: none;
	background-image: url('{{ URL::asset('img/s1.png') }}'), url('{{ URL::asset('img/s2.png') }}'), url('{{ URL::asset('img/s3.png') }}');

	-webkit-animation: snow 30s linear infinite;
	-moz-animation: snow 30s linear infinite;
	-ms-animation: snow 30s linear infinite;
	animation: snow 30s linear infinite;
}
@keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 500px 1000px, 200px 400px, -100px 300px;}
}
@-moz-keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 400px 1000px, 200px 400px, 100px 300px;}
}
@-webkit-keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 500px 1000px, 200px 400px, -100px 300px;}
}
@-ms-keyframes snow {
  0% {background-position: 0px 0px, 0px 0px, 0px 0px;}
  50% {background-position: 500px 500px, 100px 200px, -100px 150px;}
  100% {background-position: 500px 1000px, 200px 400px, -100px 300px;}
}
</style>

@stack('styles')
