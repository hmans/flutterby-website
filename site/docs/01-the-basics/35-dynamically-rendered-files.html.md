# Dynamically Rendered Files

<div class="intro" markdown="1">
Flutterby allows you to **dynamically generate HTML** (or any other output format) through a large number of supported view engines and markup languages.
</div>


#### Filter Extensions

In order to render a file dynamically, simply add one or more **filter extensions** to your source file's name (eg. `page.html.md` to render Markdown.)

The _first_ extension should always denote the target format, while any additional extensions denote filters that should be applied to the page (typically view engines that will take the page contents as their input; but they can do much more.) These filters will be applied in **reverse order**.

**Example**: a page named `page.html.md.erb` will first have the `erb` filter applied, followed by `md`, and then be exported as `page.html`.


#### Engines supported out of the box:

| `.md` | Markdown (through [kramdown](https://kramdown.gettalong.org/syntax.html)) |
| `.erb` | [ERB](http://ruby-doc.org/stdlib-2.4.0/libdoc/erb/rdoc/ERB.html) |
| `.slim` | [Slim](http://slim-lang.com/) |
| `.scss` | [Sass](http://sass-lang.com/) (with Scss syntax) |


#### Additional engines:

| `.coffee` | CoffeeScipt (through [coffee-script](https://rubygems.org/gems/coffee-script/)) |

This is (most definitely) not a complete list. Generally speaking, you will be able to use any language supported by the [Tilt](https://github.com/rtomayko/tilt) gem (which Flutterby makes heavy use of.)

#### Adding Ruby Code

View engines that let you add Ruby code (eg. ERB, Slim, and likely others) allow you to directly interact with the page being rendered and the rest of your site's tree.

Embedded Ruby code will be run against a special view object; please see the [reference documentation for View](http://www.rubydoc.info/github/hmans/flutterby/Flutterby/View) for details on available helper methods.
