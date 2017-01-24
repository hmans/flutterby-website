# Ruby Nodes

Want to do something extra crazy? Just let a page be rendered entirely through **Ruby code**.
{:.intro}

You can use the `.rb` extension to have a page (or any other kind of node) rendered by Ruby. Essentially, the Ruby code contained within the file will be executed (within the scope of the current view, so you can use available view helpers), and its return value will be used as the new body of the page.

**Example:**

~~~ ruby
# page.html.rb
def greet(name)
  "Hello, #{name}!"
end

greet("John Doe")
~~~

Obviously, your code can do much more complex things than saying hello to people, so get creative!

**Note:** remember that your code will be evaluated _every time your node is rendered_, so if it performs any expensive operations, it is up to you to add caching if needed.
{:.hint}
