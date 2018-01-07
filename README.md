# (WIP) Prologue - Jekyll Theme

A Jekyll version of the "Prologue" theme by [HTML5 UP](https://html5up.net/).
Demo: https://chrisbobbe.github.io/jekyll-theme-prologue/

![Prologue Theme](assets/images/screenshot.png "Prologue Theme Screenshot")

# How to Use

There are two ways to get started:

1. Fork this repository. If you want to use [GitHub Pages](https://pages.github.com/), create a branch named `gh-pages`.
2. Install the theme using the jekyll-theme-prologue gem. Instructions can be found [here](https://jekyllrb.com/docs/themes/#installing-a-theme).

Your `_config.yml` file **must include the following line or it will not work**: `collections: [sections]`. An optional sample config called `_sample-config.yml` ships with the gem for your convenience. If using the gem, run `open $(bundle show jekyll-theme-prologue)` to find this file, then move it to your project directory. It will do nothing until it's renamed `_config.yml` and sits in your project's root directory.

Create a `_sections` folder in your project's root directory, or use the one in the GitHub repository, and start adding content there.

All new sections should be added as html or Markdown documents in the `_sections` folder. The following section variables can be set with frontmatter:
- `title` (required)
- `order` (required; orders the sequence of sections on the page. Section 1 displays with banner.jpg)
- `icon` (optional; see [Font Awesome](http://fontawesome.io/icons/) for icon codes)
- `auto-header` (optional; "use-title" is default, "none" for no header, or custom header text in section headings)

To set the banner image, replace `assets/images/banner.jpg` with another image with the same filename. Same for `avatar.jpg`.

# Jekyll and the single-page view

**This theme is designed to include all content on a single scrollable page.** That means a few things are different from what you might expect.

You don't need to use Jekyll's hardcoded support for `_pages` or `_posts`, and layouts aren't provided for them. Each section (intro, about me, etc.) is built from an html or Markdown document in the `_sections` folder with corresponding [frontmatter](https://jekyllrb.com/docs/frontmatter/).

Since Jekyll does not support multiple layout-formatted content sections per page, this theme doesn't have a `section.html` layout in the `_layouts` folder. If you're looking to customize the templates, go to `_layouts/home.html` and `_includes/section.html`.

There shouldn't be a need to set `permalink` in frontmatter because all content appears on the same page.

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
