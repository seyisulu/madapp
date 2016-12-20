<script>
    window.Laravel = <?php echo json_encode([
        'csrfToken' => csrf_token(),
    ]); ?>
</script>
<script src="{{ elixir('js/all.js') }}"></script>
<script>
  $(document).ready(function() {
    $('body').on('click', '.logout', function logoutFunc(evt) {
      evt.preventDefault();
      //document.getElementById('logout-form').submit();
      $('#logout-form').submit();
    });
    $('.masthead').visibility({
      once: false,
      onBottomPassed: function() { $('.fixed.menu').transition('fade in'); },
      onBottomPassedReverse: function() { $('.fixed.menu').transition('fade out'); }
    });
    $('.ui.sidebar').sidebar({context:$('#sbc')}).sidebar('attach events', '.toc.item');
    $('.ui.checkbox').checkbox(); $('.ui.radio.checkbox').checkbox();
    $('.ui.accordion').accordion({ selector: { trigger: '.title .icon' } });
    $('.ui.dropdown').dropdown();
    $('.special.cards .image').dimmer({ on: 'hover' });
    $('.special.grid .image').dimmer({ on: 'hover' });
    $('.masonry.grid').masonry({ itemSelector: '.column', percentPosition: true });
  });
</script>
<script>
(function() {
  "use strict";
  !function(){function t(t){this.el=t;for(var n=t.className.replace(/^\s+|\s+$/g,"").split(/\s+/),i=0;i<n.length;i++)e.call(this,n[i])}function n(t,n,i){Object.defineProperty?Object.defineProperty(t,n,{get:i}):t.__defineGetter__(n,i)}if(!("undefined"==typeof window.Element||"classList"in document.documentElement)){var i=Array.prototype,e=i.push,s=i.splice,o=i.join;t.prototype={add:function(t){this.contains(t)||(e.call(this,t),this.el.className=this.toString())},contains:function(t){return-1!=this.el.className.indexOf(t)},item:function(t){return this[t]||null},remove:function(t){if(this.contains(t)){for(var n=0;n<this.length&&this[n]!=t;n++);s.call(this,n,1),this.el.className=this.toString()}},toString:function(){return o.call(this," ")},toggle:function(t){return this.contains(t)?this.remove(t):this.add(t),this.contains(t)}},window.DOMTokenList=t,n(Element.prototype,"classList",function(){return new t(this)})}}();
  window.canUse=function(p){if(!window._canUse)window._canUse=document.createElement("div");var e=window._canUse.style,up=p.charAt(0).toUpperCase()+p.slice(1);return p in e||"Moz"+up in e||"Webkit"+up in e||"O"+up in e||"ms"+up in e};
  (function(){if("addEventListener"in window)return;window.addEventListener=function(type,f){window.attachEvent("on"+type,f)}})();
  var	$body = document.querySelector('body');
  $body.classList.add('is-loading');
  window.addEventListener('load', function() {
    window.setTimeout(function() {
      $body.classList.remove('is-loading');
    }, 100);
  });
  // Slideshow Background.
  (function() {
    var settings = {
      // Images (in the format of 'url': 'alignment').
      images: {
        '/img/bgs/0.png': 'center',
        '/img/bgs/1.png': 'center',
        '/img/bgs/2.png': 'center',
        '/img/bgs/3.png': 'center'
      },
      delay: 6000
    };
    var	pos = 0, lastPos = 0,
        $wrapper, $bgs = [], $bg,
        k, v;
    $wrapper = document.createElement('div');
    $wrapper.id = 'bg';
    $body.appendChild($wrapper);
    for (k in settings.images) {
      $bg = document.createElement('div');
      $bg.style.backgroundColor = 'black';
      $bg.style.backgroundImage = 'url("' + k + '")';
      $bg.style.backgroundSize = 'contain';
      $bg.style.backgroundRepeat = 'repeat-x';
      $bg.style.backgroundPosition = '0% 50%';
      $wrapper.appendChild($bg);
      $bgs.push($bg);
    }
    // Main loop.
    $bgs[pos].classList.add('bgsvisible');
    $bgs[pos].classList.add('bgstop');
    // Bail if we only have a single BG or the client doesn't support transitions.
    if ($bgs.length == 1 ||	!canUse('transition')) return;
    window.setInterval(function () {
      lastPos = pos;
      pos++;
      // Wrap to beginning if necessary.
      if (pos >= $bgs.length) pos = 0;
      // Swap top images.
      $bgs[lastPos].classList.remove('bgstop');
      $bgs[pos].classList.add('bgsvisible');
      $bgs[pos].classList.add('bgstop');
      // Hide last image after a short delay.
      window.setTimeout(function () {
        $bgs[lastPos].classList.remove('bgsvisible');
      }, settings.delay / 2);
    }, settings.delay);
  })();
})();
</script>

@stack('scripts')
