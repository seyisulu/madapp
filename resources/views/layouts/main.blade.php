<!DOCTYPE html>
<html>
  <head>
    @include('shared.head')
    <style>
      #sbc.ui.inverted.pushable.segment {
        margin: 0;
        padding: 0;
        background-color: #000;
        background-color: rgba(0,0,0,0.6);
      }
      div.ui.inverted.vertical.footer.center.aligned.segment {
        background-color: transparent;
        background-color: rgba(0,0,0,0);
      }
    </style>
  </head>
  <body>
    <div id="sbc" class="ui inverted pushable segment">
      @include('shared.menu')
      <!-- Page Contents-->
      <div id="snow" class="pusher" style="min-height: 100vh; margin: 0; padding: 0;">
        <div
          class="ui inverted vertical masthead center aligned segment"
          style="min-height:100vh;margin-bottom:-60px;padding-bottom:60px;background-color:transparent;background-color:rgba(0,0,0,0);">
          @include('shared.mainmenu')
          @yield('content')
        </div>
        @include('shared.footer')
      </div>
    </div><!-- pushable -->
    @include('shared.foot')
  </body>
</html>
