/*
	Prologue by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	skel.breakpoints({
		wide: '(min-width: 961px) and (max-width: 1880px)',
		normal: '(min-width: 961px) and (max-width: 1620px)',
		narrow: '(min-width: 961px) and (max-width: 1320px)',
		narrower: '(max-width: 960px)',
		mobile: '(max-width: 736px)'
	});

	$(function() {

		var	$window = $(window),
			$body = $('body');

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				$body.removeClass('is-loading');
			});

		// CSS polyfills (IE<9).
			if (skel.vars.IEVersion < 9)
				$(':last-child').addClass('last-child');

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Prioritize "important" elements on mobile.
			skel.on('+mobile -mobile', function() {
				$.prioritize(
					'.important\\28 mobile\\29',
					skel.breakpoint('mobile').active
				);
			});

		// Nav.
			var $nav_a = $('#nav a.scrolly');

			// Scrolly-fy links.
				$nav_a
					.addClass('scrolly')
                    .on('click', function(e) {

                        var $this = $(this);

                        // External link? Bail.
                            if ($this.attr('href').charAt(0) != '#')
                                return false;

                        // Prevent default.
                            e.preventDefault();

                        if ($this.hasClass("active"))
                            return false;
                        // Deactivate all links.
                            $nav_a.removeClass('active');
                            $nav_a.removeClass('active-locked');

                        // Activate link *and* lock it (so Scrollex doesn't try to activate other links as we're scrolling to this one's section).

                            $this
                                .addClass('active')
                                .addClass('active-locked');
                        //Return false essentially calls both preventDefault() and stopPropagation()
                        return false;

					})

			// Initialize scrollzer.

				    .each(function() {

                        var	$this = $(this),
                            id = $this.attr('href'),
                            $section = $(id);

                        // No section for this link? Bail.
                        if ($section.length < 1)
                            return;

                        // Scrollex.
                        $section.scrollex({
                            mode: 'middle',
                            top: '-10vh',
                            bottom: '-10vh',
                            initialize: function() {

								// Deactivate section.
									$section.addClass('inactive');

							},
                            enter: function() {

                                // Activate section.
									$section.removeClass('inactive');

                                // No locked links? Deactivate all links and activate this section's one.
                                if ($nav_a.filter('.active-locked').length == 0) {

                                    $nav_a.removeClass('active');
                                    $this.addClass('active');

                                }

                                // Otherwise, if this section's link is the one that's locked, unlock it.
                                else if ($this.hasClass('active-locked'))
                                    $this.removeClass('active-locked');

                            }
                        });
			     });

        // Scrolly links.
			$('.scrolly').scrolly();


		// Header (narrower + mobile).

			// Toggle.
				$(
					'<div id="headerToggle">' +
						'<a href="#header" class="toggle"></a>' +
					'</div>'
				)
					.appendTo($body);

			// Header.
				$('#header')
					.panel({
						delay: 500,
						hideOnClick: true,
						hideOnSwipe: true,
						resetScroll: true,
						resetForms: true,
						side: 'left',
						target: $body,
						visibleClass: 'header-visible'
					});

			// Fix: Remove transitions on WP<10 (poor/buggy performance).
				if (skel.vars.os == 'wp' && skel.vars.osVersion < 10)
					$('#headerToggle, #header, #main')
						.css('transition', 'none');

	});

})(jQuery);