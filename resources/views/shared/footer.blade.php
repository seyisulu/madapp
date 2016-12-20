<div class="ui inverted vertical footer center aligned segment">
  <div class="ui container">
    <div class="ui stackable inverted divided equal height stackable grid">
      <div class="sixteen wide column">
        <p>&copy; {{Carbon\Carbon::now()->format('Y')}} <strong>Mad Comics</strong>. Design: <strong>Blueenzyme</strong>.</p>
      </div>
    </div>
  </div>
</div>
<form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
    {{ csrf_field() }}
</form>
