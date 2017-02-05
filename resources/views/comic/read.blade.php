@extends('layouts.main')

@section('content')
<div class="ui vertical stripe segment">
  <div class="ui middle aligned stackable grid container">
    <div class="row">
      <div class="sixteen wide column">
        <div class="ui basic clearing segment">
          <h1 class="ui left floated left aligned inverted header"><i class="protect icon"></i>
            <div class="content">Comic
              <div class="sub header">Read</div>
            </div>
          </h1>
          <h1 class="ui right floated header">
            <div tabindex="0" class="ui labeled button">
              <div class="ui red button"><i class="add icon"></i>My Comics</div>
              <div class="ui basic red left pointing label">x Added</div>
            </div>
          </h1>
        </div>

        <div class="ui piled segments">
          <div class="ui fluid card basic segment" style="background-color: #FAEBD7;">
            <div class="ui image">
              <img src="{{ Storage::disk('public')->url($pages[0]->image) }}"/>
            </div>
          </div>
        </div>

        <div class="ui basic segment">
          <div class="ui big fluid buttons">
            <a href="{{ $pages->url(1) }}" class="ui icon button{{ $pages->currentPage() == 1 ? ' disabled' : '' }}">
              <i class="angle double left large icon"></i></a>
            <a href="{{ $pages->previousPageUrl() }}" class="ui icon teal button{{ $pages->currentPage() == 1 ? ' disabled' : '' }}">
              <i class="angle left large icon"></i></a>
            <button class="ui disabled teal button">{{ $pages->currentPage() }} of {{ $pages->lastPage() }}</button>
            <a href="{{ $pages->nextPageUrl() }}" class="ui icon teal button{{ $pages->currentPage() == $pages->lastPage() ? ' disabled' : '' }}">
              <i class="angle right large icon"></i></a>
            <a href="{{ $pages->url($pages->lastPage()) }}" class="ui icon button{{ $pages->currentPage() == $pages->lastPage() ? ' disabled' : '' }}">
              <i class="angle double right large icon"></i></a>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
@endsection
