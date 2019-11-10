# Multiple collection Modified Prologue - Jekyll Theme

[![Gem Version](https://badge.fury.io/rb/jekyll-theme-prologue.svg)](https://badge.fury.io/rb/jekyll-theme-prologue)

![Prologue Theme](assets/images/screenshot.png "Prologue Theme Screenshot")


This theme is a modified version of the jekyll theme [Prologue](https://github.com/chrisbobbe/jekyll-theme-prologue).

The installation and configuration of the theme is similar to the original one.

## Additions and modifications to original theme

The additions to the original theme are:

* Multiple collection management if desired.
* sections of each collection may be full rendered in one page (as in the original theme) or you may choose to generate separate full pages and a collection page with excerpts of each section (page) and a follo up link.
* I have include support to LaTeX equiations display using mathjax.
* Section content and excerps in the collection scrolling page is displayed left justify instead of centered.
* I have stablished Form Matter defaults in the _config.yml file in order use correct layouts (page,post and draft) when a file in a collection does not declare a layout in its Form Matter.

## changing 'read more' label

In order to change the give the user the oportunity to change 'read more' label associated to links generated in excerpts of pages and posts, I have created a them configurations variable.
You can change it in '_config.yml' file in the section theme-options.
```
theme-options:
  readmorelabel: "what ever you want"
```


## How to configure multiple collections

You can create as many collections as you want.

You have to declare them in the collecions section of your '_config.yml' file.

For example:

THe default configuration of this theme declares two collections in th config file, sections and others:


```
  collections:
    sections:
      output: false
    others:
      output: true
```

sections collection behaves just like the one in the original Prologue theme.
It renders all its sections in one page and does not create a _sections subdirectory.
You can read the full content of each section in the single index.html page that it renders.

In order to get this you specify output: false or just don't specify output at all.

others collection renders generates each page separately, in the _others directory and generates a excerpt of each section in the others.html file witha "Read more" link to read the full content.

You need page for each collection, with just the [Front Matter](https://jekyllrb.com/docs/front-matter/)

index.md for the *sections* collection, with this Front Matter:
```
---
layout: home
title: My Great Homepage
icon: fa-home
order: 1
---
```

You have to declare a home layout, that renders the scrolling page with the sections content.
There is no collection entry, or alternatively you can declarre collection to be 'sections'.

others.md for the *others* collection, with this Front Matter:
```
---
layout: home
collection: others
title: Other sections
icon: fa-hotel
order: 2
---
```

You declare a **home** *layout* in order to get others.html scrolling page with sections content of *others* collection.

You must declare 'collection: others' in order to get the pages list of the others collection.
If you omit it you will get a duplicate of the pages in *sections* collection, which is the default.

As others collection has been declared with 'output: true' in the config file, you will get a scrolling page with excerpts and "read me" links that point to the full page content.
