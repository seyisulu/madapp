<div class="ui container">
  <div class="ui large secondary inverted pointing menu" style="border: 0;">
    <a class="toc item"><i class="sidebar icon"></i></a>
    <a href="{{ url('/') }}" class="active item">Home</a>
    <a href="{{ url('/comics') }}" class="item">Comics</a>
    <a href="{{ url('/about') }}" class="item">About</a>
    @if (auth()->user() && auth()->user()->hasPermission('browse_admin'))
      <a href="{{ url('/admin') }}" class="item">Admin</a>
    @endif
    <a href="/contact" class="item">Contact</a>
    <div class="right item">
      @if (Auth::check())
        <a href="/home" class="ui inverted button">Library</a>
        <a href="{{ url('/logout') }}" class="ui inverted button logout" style="margin-left: 0.5em;">Logout</a>
      @else
        <a href="{{ url('/login') }}" class="ui inverted button">Login</a>
        <a href="{{ url('/register') }}" class="ui inverted button" style="margin-left: 0.5em;">Register</a>
      @endif
    </div>
  </div>
</div>
