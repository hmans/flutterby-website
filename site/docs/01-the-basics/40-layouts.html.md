# Layouts

#### Adding Layouts

A **layout file** is a special file named `_layout.html.<ext>` that, when rendering a page, will wrap the rendered output of that page. Layouts can be defined in any template languages supported by Flutterby; it comes with support for [ERB] and [Slim] out of the box, but many other languages can be added.

Consider this example `_layout.html.slim` application layout:

~~~
doctype html
html
  head
    title = config["site"]["title"]
    link rel="stylesheet" href="/css/styles.css"
    script src="/js/app.js"

  body
    // The "yield" invocation will embed the inner part of the page.
    = yield
~~~


#### Nested Layouts

When rendering a page within a subdirectory of your site, any layouts encountered on the way "up" the site tree will be applied.

**Example:** if you're building a blog, your `/posts/` directory that is storing your blog posts may have its own `/posts/_layout` file that applies a post-specific layout and is then wrapped by the global application layout sitting at the root of your site.






[ERB]: http://ruby-doc.org/stdlib-2.4.0/libdoc/erb/rdoc/ERB.html
[Slim]: http://slim-lang.com/
