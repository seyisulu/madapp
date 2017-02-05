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
    .masthead.segment {
      box-sizing: border-box;
      height: 100%;
      padding: 1em 0em;
      margin-bottom: -60px;
      background-color: transparent;
      background-color: rgba(0,0,0,0);
    }
    .masthead .logo.item img {
      margin-right: 1em;
    }
    .masthead .ui.menu .ui.button {
      margin-left: 0.5em;
    }
    .masthead h1.ui.header {
      margin-top: 0;
      margin-bottom: 0em;
      font-size: 4em;
      font-weight: normal;
    }
    .masthead h2 {
      font-size: 1.7em;
      font-weight: normal;
    }
    div.ui.inverted.vertical.footer.center.aligned.segment {
      background-color: transparent;
      background-color: rgba(0,0,0,0);
    }
    @media only screen and (max-width: 700px) {
      .masthead.segment {
        /* min-height: 350px; */
      }
      .masthead h1.ui.header {
        font-size: 2em;
        margin-top: 0;
      }
      .masthead h2 {
        margin-top: 0.5em;
        font-size: 1.5em;
      }
    }
    </style>
  </head>
  <body>
    <div id="sbc" class="ui inverted pushable segment">
      @include('shared.menu')
      <!-- Page Contents-->
      <div id="snow" class="pusher" style="min-height: 100vh; height: 100vh; margin: 0; padding: 0;">
        <div class="ui inverted vertical masthead center aligned segment" style="margin-bottom: -60px;background-color: transparent;background-color: rgba(0,0,0,0);">
          @include('shared.mainmenu')
          @yield('content')
        </div>
        @include('shared.footer')
      </div>
    </div><!-- pushable -->
    @include('shared.foot')
  </body>
</html>
