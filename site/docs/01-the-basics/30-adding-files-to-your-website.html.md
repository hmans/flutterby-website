# Adding Files to Your Site

<div class="intro" markdown="1">
A website built with Flutterby consists of **files** that will be **transformed** and eventually **served** to clients by your web server. You can add static files to your project, but also templates that will be rendered to HTML (or other formats.)
</div>

At its most basic, Flutterby operates by reading all files from your `site` directory and exporting them to static files in your `_build` directory (or serving them directly to a client when using `flutterby serve`.)

When doing so, Flutterby will follow some core rules:


#### Use any structure

Flutterby doesn't impose any specific structure on the contents of your `site` directory; unlike many other tools of its kind, it simply considers your website to be a tree of files that are intended to be exported or served.


#### Normal files that don't require processing

Files with a single extension will be copied "as is"; eg. a `file.html` will also export to `file.html`. You can safely add any static assets (images, JavaScript files, etc.) to your project, and can be sure they will be exported without any extra processing.


#### Processed Files

Files with more than one extension will be transformed in the reverse order of its extensions; eg. a `file.html.md` will be run through the Markdown filter and exported as `file.html`. This, for example, allows you to author your pages, be they blog posts or not, using Markdown (or any other supported markup language), and have them all rendered to HTML.

You can chain any number of these extensions; eg. a file named `file.html.md.erb` will first be processed by ERB, then by Markdown, before finally being exported to `file.html`.



#### Private Files

By default, all files present in your `site` directory will be exported. If you don't want to export specific files or folders, make sure their name starts with an underscore (eg. `_secret.html`).

Files with names starting with underscores will not be exported to the static version of your site, nor served through `flutterby serve`.
