# Front Matter

<div class="intro" markdown="1">
In Flutterby, every file can have **data** associated with it; for example, tags, publication timestamps, or any other meta information. **Frontmatter** is a convenient way to add data to any file.
</div>

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
