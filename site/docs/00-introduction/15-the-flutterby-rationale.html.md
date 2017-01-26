# The Flutterby Rationale

#### "Why would anyone build yet another Static Site Generator? There are literally millions already!"

Yup, that is a totally accurate assessment and also a very valid question! And as usual and possibly expected, the answer is this: _none_ of the options out there worked like I wanted a static site generator to work. So let me explain how Flutterby is different from the competition.

Flutterby's core feature (and what enables most of its magic tricks) is the way it reads and processes your site. When it starts up, it generates a **beautiful graph of Ruby objects** from your source directory; your templates and Ruby code can now **traverse**, **query** or even **modify** this graph, before it is finally exported (or served via HTTP.)

Maybe you're building a blog. How about doing this in your home page template:

~~~
<% find("/posts").reject(:draft?).each do |post| %>
  <%= render post %>
<% end %>
~~~

Everything in your project is a **node** that can be **rendered**, has **data** that can be used in templates and queries, and much more. This makes Flutterby extremely powerful, flexible, and extensible -- and fun to work with.

But there's more. Flutterby has been designed from the start to allow you to also serve your site dynamically, using something called **Live Mode**. Live Mode turns your website into a fully-fledged web application that uses the afore mentioned graph of Ruby objects as its database.

Want to be able to create new blog posts via the web? Sure, your code just needs to create a new node representing the post, and it will be **persisted back to disk**.

This makes Flutterby a powerful toolkit for small to medium web applications -- start your site as a simple static site, then move it to Live Mode when you or your client requires it.

_NOTE: Live Mode and node saving are currently highly experimental. Please refer to the [Roadmap](./roadmap.html) for details._
