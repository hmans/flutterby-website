# Rendering Partials

**Partials** are snippets of HTML that you may render from within another page. Note that Flutterby doesn't actually have any built-in concept of "partials"; you just render a node from within another node.
{:.intro}

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

**Note:** this example used a static `_menu.html` file as an example, but of course your partials can also be fully dynamic -- so do go ahead and use ERB, Slim, Markdown, or whatever, just like you would with a normal page.
{:.hint}


#### Passing local variables into partials

When rendering a partial, you may use the `locals:` argument to specify a hash that will be passed to the partial, making it available from within the partial via the `locals` variable.

For example, let's assume you have a `_greeting.html.erb` partial:

~~~
Hello, <%= locals[:name] || "world" %>!
~~~

You can now pass the name to this partial like this:

~~~
<%= render "./_greeting", locals: { name: "John Doe" } %>
~~~



#### Further Reading

Please refer to the reference documentation for [render](http://www.rubydoc.info/github/hmans/flutterby/Flutterby/Node#render-instance_method) for details.
