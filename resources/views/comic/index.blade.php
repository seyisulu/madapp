@extends('layouts.main')

@section('content')
<div class="ui vertical stripe segment">
  <div class="ui middle aligned stackable grid container">
    <div class="row">
      <div class="sixteen wide column">
        <div class="ui basic clearing segment">
          <h1 class="ui left floated left aligned inverted header"><i class="protect icon"></i>
            <div class="content">Comics
              <div class="sub header">Published</div>
            </div>
          </h1>
          <h1 class="ui right floated header">
            <div tabindex="0" class="ui labeled button">
              <div class="ui red button"><i class="add icon"></i>Total</div>
              <div class="ui basic red left pointing label">{{ $comics->total() }} Comics(s)</div>
            </div>
          </h1>
        </div>

        <div class="ui piled segments">
          <div class="ui left aligned segment" style="background-color: #FAEBD7;">
            <h2 class="ui header"><i class="file outline icon"></i>
              <div class="content">Page <span>#</span>{{$comics->currentPage()}}
                <div class="sub header">of {{$comics->lastPage()}}</div>
              </div>
            </h2>
            <div class="ui three column doubling stackable special grid">
              @foreach ($comics as $comic)
                <div class="column">
                  <div class="ui fluid card">
                    <div class="blurring dimmable image">
                      <div class="ui dimmer">
                        <div class="content">
                          <div class="center"><a href="{{ route('comics.show', ['id' => $comic->id]) }}" class="ui inverted button">View</a></div>
                        </div>
                      </div><img src="{{ Storage::disk('public')->url($comic->image) }}"/>
                    </div>
                    <div class="content"><a href="{{ route('comics.show', ['id' => $comic->id]) }}" class="header">{{ $comic->name }}</a>
                      <div class="meta"><span class="date">{{ $comic->created_at->diffForHumans() }}</span></div>
                    </div>
                  </div>
                </div>
              @endforeach
            </div>
          </div>
        </div>

        <div class="ui basic segment">
          <div class="ui big fluid buttons">
            <a href="{{ $comics->url(1) }}" class="ui icon button{{ $comics->currentPage() == 1 ? ' disabled' : '' }}">
              <i class="angle double left large icon"></i></a>
            <a href="{{ $comics->previousPageUrl() }}" class="ui icon teal button{{ $comics->currentPage() == 1 ? ' disabled' : '' }}">
              <i class="angle left large icon"></i></a>
            <button class="ui disabled teal button">{{ $comics->currentPage() }} of {{ $comics->lastPage() }}</button>
            <a href="{{ $comics->nextPageUrl() }}" class="ui icon teal button{{ $comics->currentPage() == $comics->lastPage() ? ' disabled' : '' }}">
              <i class="angle right large icon"></i></a>
            <a href="{{ $comics->url($comics->lastPage()) }}" class="ui icon button{{ $comics->currentPage() == $comics->lastPage() ? ' disabled' : '' }}">
              <i class="angle double right large icon"></i></a>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
@endsection
