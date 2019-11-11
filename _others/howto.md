---
title: How to use several collections
icon: fa-comment
order: 1
---
You can create as many collections as you want.

You have to declare them in the collecions section of your "_config.yml" file.

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
