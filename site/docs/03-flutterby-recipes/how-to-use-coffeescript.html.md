# How to use CoffeeScript in your Flutterby project

[CoffeeScript] is, as its website states, "a little language that compiles into JavaScript".

Flutterby will automatically pick up the `coffee-script` gem when available. Simply add it to your project's Gemfile:

~~~ ruby
# In your Gemfile:
gem "coffee-script"
~~~

This will make the `coffee` filter extension available. Once you add a file named `app.js.coffee`, it will be processed by the CoffeeScript compiler and exported as `app.js`.

Enjoy!


[CoffeeScript]: http://coffeescript.org/
