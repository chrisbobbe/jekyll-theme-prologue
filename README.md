# (WIP) Prologue - Jekyll Theme

[![Gem Version](https://badge.fury.io/rb/jekyll-theme-prologue.svg)](https://badge.fury.io/rb/jekyll-theme-prologue)

A Jekyll version of the responsive, single-page "Prologue" theme by [HTML5 UP](https://html5up.net/). Perfect for a streamlined portfolio.

**Demo**: https://chrisbobbe.github.io/jekyll-theme-prologue/

![Prologue Theme](assets/images/screenshot.png "Prologue Theme Screenshot")

# How to Use

There are two ways to get started:

1. Fork the [GitHub repository](https://github.com/chrisbobbe/jekyll-theme-prologue). If you want to use [GitHub Pages](https://pages.github.com/), create a branch named `gh-pages`. (NOTE: The _config.yml file in this repository has `baseurl` set for my own GitHub Pages site, so you'll want to change it or make it blank.)
2. Install the theme using the jekyll-theme-prologue gem. Instructions can be found [here](https://jekyllrb.com/docs/themes/#installing-a-theme).

**The following instructions apply to this theme only.**

Your `_config.yml` file **must include the following line or it will not work**: `collections: [sections]`. This tells Jekyll to look in the _sections folder (which you will create) for your content. A sample config `_config.yml` is in the GitHub repository for your reference. If using the gem, run `open $(bundle show jekyll-theme-prologue)` to find this file, then optionally move it to your project's root directory. It will do nothing until you move it there.

Create a `_sections` folder in your project's root directory and start adding content. Sample content is provided in the [GitHub repository](https://github.com/chrisbobbe/jekyll-theme-prologue).

All new sections should be added as html or Markdown documents in the `_sections` folder. The following section variables can be set with frontmatter:
- `title` (required)
- `order` (required; orders the sequence of sections on the page. Section 1 displays with banner.jpg)
- `icon` (optional; see [Font Awesome](http://fontawesome.io/icons/) for icon codes)
- `auto-header` (optional; "use-title" is default, "none" for no header, or custom header text)

To set the banner image, overwrite `assets/images/banner.jpg`. Same for `avatar.jpg`.

# Jekyll and the single-page view

**This theme is designed to include all content on a single scrollable page.** That means a few things are different from what you might expect in Jekyll.

You don't need to use Jekyll's hardcoded support for `_pages` or `_posts`, and layouts aren't provided for them. Jekyll does not support multiple layout-formatted content sections per page. Each section (intro, about me, etc.) is built from an html or Markdown document in the `_sections` folder with corresponding [frontmatter](https://jekyllrb.com/docs/frontmatter/).

If you're looking to customize the templates, go to `_layouts/home.html` and `_includes/section.html`.

There shouldn't be a need to set `permalink` in frontmatter because all content appears on the same page.

# Added Features

* **[Formspree.io](https://formspree.io/) contact form integration** - just add your email to the `_config.yml` and it works!
* Add your **social profiles** easily in `_config.yml`. Only social profiles buttons you enter in `config.yml` show up on the site footer!
* Custom 404 page called 404.html

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
