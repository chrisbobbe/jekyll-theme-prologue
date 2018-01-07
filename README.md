# (WIP) Prologue - Jekyll Theme

A Jekyll version of the "Prologue" theme by [HTML5 UP](https://html5up.net/).

![Prologue Theme](images/screenshot.png "Prologue Theme Screenshot")

# How to Use

Fork this repository and create a branch named `gh-pages`, then start editing the `_config.yml` file!

For those unfamiliar with how Jekyll works, check out [jekyllrb.com](https://jekyllrb.com/) for all the details.

All new sections should be added in the `_sections` folder in separate html documents. The following variables can be set with frontmatter:
- `title` (required)
- `icon` (required; see [Font Awesome](http://fontawesome.io/icons/) for icon codes)
- `order` (required; orders the sequence of sections on the page. The first section displays with banner.jpg.)
- `auto-header` (optional; "use-title" is default, "none" for no header, or custom header text)

To set the banner image, replace `images/banner.jpg` with another image with the same filename. Same for `avatar.jpg`.

# Jekyll and the single-page view

**This theme is designed to include all content on a single scrollable page.** That means that you don't need to use Jekyll's hardcoded support for `_pages` or `_posts`. Each section (intro, about me, etc.) is built from an html or Markdown document in the `_sections` folder with corresponding [frontmatter](https://jekyllrb.com/docs/frontmatter/).

Since Jekyll does not support multiple layout-formatted content sections per page, this theme doesn't have a `section.html` layout in the `_layouts` folder. Instead, look for `_layouts/home.html` and `_includes/section.html`.

There shouldn't be a need to set `permalink` in frontmatter because all content appears on the same page. In fact, to prevent visitors from requesting individual un-styled html files from `_sections` (i.e., by typing `/_sections/about-me.html` into the address bar), you can delete this directory from `_site` (**NOT** from your project's root directory please!!) after building. `_site/index.html` is the only html file you need in your built site, as everything is put together there.

# Added Features

* **[Formspree.io](https://formspree.io/) contact form integration** - just add your email to the `_config.yml` and it works!
* Add your **social profiles** easily in `_config.yml`. Only social profiles buttons you enter in `config.yml` show up on the site footer!

# Credits

Thanks to @andrewbanchich for his many Jekyll adaptations of HTML5 UP's elegant themes, which helped and inspired me.

Original README from HTML5 UP:

```
Prologue by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)


This is Prologue, a simple, single page responsive site template. It features a
clean, minimalistic design and a sticky sidebar with navigation-linked scrolling.

Demo content images* are courtesy of the ridiculously talented Felicia Simion. Check out
more of her amazing work over at deviantART:

http://ineedchemicalx.deviantart.com/

(* = Not included! Only meant for use with my own on-site demo, so please do NOT download
and/or use any of Felicia's work without her explicit permission!)

Demo banner images* courtesy of Unsplash, a radtastic collection of CC0 (public domain)
images you can use for pretty much whatever.

(* = Not included)

AJ
aj@lkn.io | @ajlkn

PS: Not sure how to get that contact form working? Give formspree.io a try (it's awesome).


Credits:

	Demo Images:
		Felicia Simion (ineedchemicalx.deviantart.com)
		Unsplash (unsplash.com)

	Icons:
		Font Awesome (fortawesome.github.com/Font-Awesome)

	Other
		jQuery (jquery.com)
		html5shiv.js (@afarkas @jdalton @jon_neal @rem)
		CSS3 Pie (css3pie.com)
		background-size polyfill (github.com/louisremi)
		Respond.js (j.mp/respondjs)
		jquery.scrolly (@ajlkn)
		jquery.scrollzer (@ajlkn)
		Skel (skel.io)
```
