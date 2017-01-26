# Rendering Partials

Generally speaking, a **partial** is a snippet of HTML that you want to render from within another page. Note that Flutterby doesn't actually have any concept of "partials"; you just render another node and insert its output into your node's output, and you'll use the `render` view helper to do it.

**Example:** let's assume you have a file named `_menu.html` that holds your site menu. Since its name starts with an underscore, it will never actually be published; nodes intended to be used as partials should probably always start with an underscore.

~~~
<!-- _menu.html -->
<ul>
  <li><a href="/">Home</a></li>
  <li><a href="/about/">About</a></li>
  <li><a href="/blog/">Blog</a></li>
</ul>
~~~

You can now render this node from within another file:

~~~ ruby
<%= render "./_menu" %>
~~~

Note that the first argument passed to `render` is a path expression that will be passed to `find`. You can also invoke the node's `render` method directly:

~~~ ruby
<%= find("./_menu").render %>
~~~

Please refer to the reference documentation for [render](http://www.rubydoc.info/github/hmans/flutterby/Flutterby/Node#render-instance_method) and [find](http://www.rubydoc.info/github/hmans/flutterby/Flutterby/Node#find-instance_method) for details.

**Note:** this example used a static `_menu.html` file as an example, but of course your partials can also be fully dynamic -- so do go ahead and use ERB, Slim, Markdown, or whatever, just like you would with a normal page.
{:.hint}
