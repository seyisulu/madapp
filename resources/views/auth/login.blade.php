@extends('layouts.auth')

@push('styles')
<style type="text/css">
  body {
    background-color: #DADADA;
  }
  body > .grid {
    height: 100%;
  }
  .image {
    margin-top: -100px;
  }
  .column {
    max-width: 450px;
  }
</style>
@endpush

@section('content')
  <div class="ui middle aligned center aligned grid">
    <div class="column">
      <a href="{{ url('/') }}"><img src="{{ URL::asset('img/logo.png') }}" class="image" style="height: 128px;"></a>
      <form class="ui large form{{ count($errors) > 0 ? ' error' : '' }}" method="POST" action="{{ url('/login') }}">
        {{ csrf_field() }}
        <div class="ui stacked segment">
          <div class="field{{ $errors->has('email') ? ' error' : '' }}">
            <div class="ui left icon input">
              <i class="user icon"></i>
              <input type="text" name="email" placeholder="E-mail address" value="{{ old('email') }}" required autofocus>
            </div>
          </div>
          <div class="field{{ $errors->has('password') ? ' error' : '' }}">
            <div class="ui left icon input">
              <i class="lock icon"></i>
              <input type="password" name="password" placeholder="Password" required>
            </div>
          </div>

          <div class="ui left aligned basic segment" style="padding: 0;">
            <div class="field">
              <div class="ui toggle checkbox">
                <input type="checkbox" name="remember" tabindex="0" class="hidden">
                <label>Remember me</label>
              </div>
            </div>

            <div class="ui error message">
              <ul class="ui list">
                @foreach ($errors->all() as $error)
                  <li>{{ $error }}</li>
                @endforeach
              </ul>
            </div>
          </div>

          <button class="ui fluid large red submit button" type="submit">Login</button>
        </div>

      </form>

      <div class="ui message">
        <a href="{{ url('/register') }}">Register</a> | <a href="{{ url('/password/reset') }}">Forgot Password</a>
      </div>
    </div>
  </div>
@endsection
