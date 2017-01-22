# Adding Files to Your Site

As you are likely aware, a website consists of **files** that will be served to clients by a **web server**. These files can be HTML files (like this page), CSS stylesheets, JavaScript files, XML or JSON data files -- there's probably more.

At its most basic, Flutterby operates by reading all files from your `site` directory and exporting them to static files in your `_build` directory (or serving them directly to a client when using `flutterby serve`.)

It follows these rules when doing so:

#### Normal files that don't require processing

Files with a single extension will be copied "as is"; eg. a `file.html` will also export to `file.html`. You can safely add any static assets (images, JavaScript files, etc.) to your project, and can be sure they will be exported without any extra processing.


#### Processed Files

Files with more than one extension will be transformed in the reverse order of its extensions; eg. a `file.html.md` will be run through the Markdown filter and exported as `file.html`. This, for example, allows you to author your pages, be they blog posts or not, using Markdown (or any other supported markup language), and have them all rendered to HTML.

You can chain any number of these extensions; eg. a file named `file.html.md.erb` will first be processed by ERB, then by Markdown, before finally being exported to `file.html`.



#### Private Files

By default, all files present in your `site` directory will be exported. If you don't want to export specific files or folders, make sure their name starts with an underscore (eg. `_secret.html`).

Files with names starting with underscores will not be exported to the static version of your site, nor served through `flutterby serve`.



#### Front Matter

You can optionally prefix any file with frontmatter, and its data will automatically be extracted and assigned to the originating page. (You can later use query this data when adding dynamic templates or code to your project.)

A file with YAML frontmatter looks like this:

~~~ bash
---
title: Hello World
date: 2017-04-01
---

This is my post!
~~~

Flutterby also supports [TOML](https://github.com/toml-lang/toml) frontmatter -- simply use `+++` instead of `---` to separate your frontmatter from the rest of your document:

~~~ bash
+++
title = "Hello World"
date = 2017-04-01
+++

This is my post!
~~~
