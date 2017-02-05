@extends('layouts.main')

@section('content')
<div class="ui vertical stripe segment">
  <div class="ui middle aligned stackable grid text container">
    <div class="row">
      <div class="sixteen wide column">
        <div class="ui basic clearing segment">
          <h1 class="ui left floated left aligned inverted header"><i class="protect icon"></i>
            <div class="content">{{ $comic->name }}
              <div class="sub header">{{ count($volumes) }} Volume(s) Published</div>
            </div>
          </h1>
        </div>

        <div class="ui piled segments">
          <div class="ui left aligned segment" style="background-color: #FAEBD7;">
            <h2 class="ui header"><i class="newspaper icon"></i>
              <div class="content">Synopsis
                <div class="sub header">{{ $comic->synopsis }}</div>
              </div>
            </h2>

            <div class="ui items">
              @foreach ($volumes as $volume)
                <div class="item">
                  <div class="image">
                    <img src="{{ Storage::disk('public')->url($volume->image) }}">
                  </div>
                  <div class="content">
                    <a class="header">Volume #{{$volume->number}}</a>
                    <div class="meta">
                      <span>{{ $volume->name }}</span>
                    </div>
                    <div class="meta">
                      <span>{{ count($volume->issues) }} Issue(s)</span>
                    </div>
                    <div class="description">
                      <div class="ui list">
                        @foreach ($volume->issues as $issue)
                          <a class="item" href="{{ route('read', ['comicSlug' => $comic->slug, 'volumeId' => $volume->id, 'issueId' => $issue->id]) }}">
                            <i class="map marker icon"></i>
                            <div class="content">
                              <div class="header">Issue #{{ $issue->number }}</div>
                              <div class="description">{{ $issue->name }}</div>
                            </div>
                          </a>
                        @endforeach
                      </div>
                    </div>
                    <div class="extra">
                      <i class="terminal icon"></i>{{ $views[$volume->id] }} reads total
                    </div>
                  </div>
                </div>
              @endforeach
            </div>

          </div>
        </div>

      </div>
    </div>
  </div>
</div>
@endsection
