# Front Matter

<div class="intro" markdown="1">
In Flutterby, every file can have **data** associated with it; for example, tags, publication timestamps, or any other meta information. **Front matter** is a convenient way to add data to any file.
</div>

You can optionally prefix any file with front matter, and its data will automatically be extracted and assigned to the originating page. (You can later use query this data when adding dynamic templates or code to your project.)

A file with YAML front matter looks like this:

~~~ bash
---
title: Hello World
date: 2017-04-01
---

This is my post!
~~~

Flutterby also supports [TOML](https://github.com/toml-lang/toml) front matter -- simply use `+++` instead of `---` to separate your front matter from the rest of your document:

~~~ bash
+++
title = "Hello World"
date = 2017-04-01
+++

This is my post!
~~~
