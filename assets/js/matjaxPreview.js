/*

 * MathJax eqn preview for a tags

 *

 * Copyright (c) 2015 Mauricio Poppe

 * Licensed under the MIT license.

 */

(function () {

  var $container = $(document.body);
  var $tooltip = $('<div />').addClass('mathjax-tooltip');
  $container.append($tooltip);

  function onMouseOver(ev) {
    var a = ev.currentTarget;
    var $number = $(a.hash);
    var $root = $number.closest('.MathJax_Display');
    var bounds = $(a).offset();
    var containerBounds = $container.offset();
    $tooltip.stop(true, true);
    $tooltip.append($root.clone());
    $tooltip.css({
      top: bounds.top - containerBounds.top - $tooltip.height() - 5,
      left: -1
    });
    $tooltip.fadeIn();
  }

  function onMouseOut(a) {
    $tooltip.stop(true, true);
    $tooltip.fadeOut(function () {
      $tooltip.empty();
    });

  }


  MathJax.Hub.Queue(function () {
    $container.on('mouseover', 'a[href*="mjx-eqn-"]', onMouseOver);
    $container.on('mouseout', 'a[href*="mjx-eqn-"]', onMouseOut);
  });

})();