@extends('layouts.main')

@section('content')
<div class="ui vertical stripe segment">
  <div class="ui middle aligned stackable grid container">
    <div class="row">
      <div class="sixteen wide column">
        <div class="ui basic clearing segment">
          <h1 class="ui left floated left aligned inverted header"><i class="book icon"></i>
            <div class="content">Library
              <div class="sub header">{{ Auth::user()->name }}</div>
            </div>
          </h1>
          <h1 class="ui right floated header">
            <div tabindex="0" class="ui labeled button">
              <a href="{{ url('/comics') }}" class="ui red button"><i class="add icon"></i>Find Comics</a>
              <a href="{{ url('/comics') }}" class="ui basic red left pointing label">1 Issue(s)</a>
            </div>
          </h1>
        </div>
        <div class="ui piled segments">
          <div class="ui left aligned segment" style="background-color: #FAEBD7;">
            <h2 class="ui header"><i class="protect icon"></i>
              <div class="content">Comics
                <div class="sub header">Purchased Issues</div>
              </div>
            </h2>
            <div class="ui three column doubling stackable special grid">
              <div class="column">
                <div class="ui fluid card">
                  <div class="blurring dimmable image">
                    <div class="ui dimmer">
                      <div class="content">
                        <div class="center"><a href="{{ url('/comics/read') }}" class="ui inverted button">Read</a></div>
                      </div>
                    </div><img src="{{ URL::asset('img/cvs/oro.jpg') }}"/>
                  </div>
                  <div class="content"><a href="{{ url('/comics/view') }}" class="header">Oro</a>
                    <div class="meta"><span class="date">A story of pain &amp; revenge...</span></div>
                  </div>
                  <div class="extra content"><a href="{{ url('/comics/read') }}"><i class="unhide icon"></i>Read Issue</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
