# Finding Nodes

Within [dynamically rendered templates](./dynamically-rendered-files.html), use the `find`, `pages`, `children` and `siblings` methods to retrieve specific nodes from the site tree.
{:.intro}

#### The `find` method

`find` is available as an instance method on any node, and also as a view helper method. Its only argument is a path expression that referes to the node you want to retrieve; this path expression works pretty much the same way as a filesystem path expression. Some simple examples:

~~~ ruby
# Get the root node
node.find "/"

# Get a node nested under root
node.find "/sections/blog"

# Get a node within the same directory
node.find "./other"

# Get a node from the parent folder
node.find "../other"
~~~

Please refer to the [find reference documentation](http://www.rubydoc.info/github/hmans/flutterby/Flutterby/Node#find-instance_method) for details.


#### `children`, `pages`, and `siblings`

These are instance methods provided by nodes. The `children` method will return an array containing the node's direct children.

The `pages` method works just like `children`, but limits the resulting list to nodes that will be published as HTML pages.

`siblings` will return all of the node's siblings.


#### Example

Let's say you're building a blog, and you're saving your blog posts in a `/posts/` folder underneath the root of your site. In order to render a list of links to your posts, you can use the `find` command to fetch a reference to the `/posts/` folder, and then use its `pages` method to get a list of contained pages (= nodes that will be rendered to HTML pages):

~~~
<ul>
  <% find("/posts").pages.each do |post| %>
    <li><%= link_to post.title, post %></li> %>
  <% end %>
</ul>
~~~

Consider that `pages` (and its friends) returns a simple Ruby array which you can further filter. For example, you may want to remove any posts that are marked as a draft through their front matter:

~~~
<ul>
  <% find("/posts").pages.reject { |p| p.data.draft }.each do |post| %>
    <li><%= link_to post.title, post %></li> %>
  <% end %>
</ul>
~~~
