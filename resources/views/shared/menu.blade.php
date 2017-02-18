<!-- Following Menu-->
<div class="ui large top fixed menu transition hidden">
  <div class="ui container">
    <a href="{{ url('/') }}" class="active item">Home</a>
    <a href="{{ url('/comics') }}" class="item">Comics</a>
    <a href="{{ url('/about') }}" class="item">About</a>
    @if (auth()->user() && auth()->user()->hasPermission('browse_admin'))
      <a href="{{ url('/admin') }}" class="item">Admin</a>
    @endif
    <a href="{{ url('/contact') }}" class="item">Contact</a>
    <div class="right menu">
      @if (Auth::check())
        <div class="item"><a href="{{ url('/home') }}" class="ui button">Library</a></div>
        <div class="item logout"><a href="{{ url('/logout') }}" class="ui button" style="margin-left: 0.5em;">Logout</a></div>
      @else
        <div class="item"><a href="{{ url('/login') }}" class="ui button">Login</a></div>
        <div class="item"><a href="{{ url('/register') }}" class="ui primary button" style="margin-left: 0.5em;">Register</a></div>
      @endif
    </div>
  </div>
</div>
<!-- Sidebar Menu-->
<div class="ui vertical inverted sidebar menu left">
  <a href="{{ url('/') }}" class="active item">Home</a>
  <a href="{{ url('/comics') }}" class="item">Comics</a>
  <a href="{{ url('/about') }}" class="item">About</a>
  @if (auth()->user() && auth()->user()->hasPermission('browse_admin'))
    <a href="{{ url('/admin') }}" class="item">Admin</a>
  @endif
  <a href="{{ url('/contact') }}" class="item">Contact</a>
  @if (Auth::check())
    <a href="{{ url('/home') }}" class="item">Library</a>
    <a href="{{ url('/logout') }}" class="item logout">Logout</a>
  @else
    <a href="{{ url('/login') }}" class="item">Login</a>
    <a href="{{ url('/register') }}" class="item">Register</a>
  @endif
</div>
