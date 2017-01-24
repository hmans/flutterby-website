# Adding View Helpers

When rendering a template that contains Ruby code, it runs within the context of a special view object. This object provides a number of helper methods (see [View reference documentation][1] for details), but you can also add new methods to the mix.
{:.intro}

#### Adding your own View Helpers

Add a special file named `_view.rb` to any folder and use the `extend_view` command to add new view helper methods available to all pages within this folder -- and all of its subfolders.

**Example:**

~~~ ruby
# _view.rb
extend_view do
  def nice_title
    page.title.humanize
  end
end
~~~

`extend_view` also accepts Ruby modules as arguments, allowing you to host the actual implementation outside of your `site` directory:

~~~ ruby
# _view.rb
require "myapp/myhelpers"
extend_view MyApp::MyHelpers
~~~


#### View Helper Inheritance

When a page that lives in a subfolder of your site is being rendered, Flutterby will mix all `_view.rb` extensions encountered on its way "up" the site tree into the view scope. This means that you can use deeper-nested `_view.rb` files to **overload** helper methods that were defined in **higher-nested** ones.



[1]: http://www.rubydoc.info/github/hmans/flutterby/Flutterby/View
