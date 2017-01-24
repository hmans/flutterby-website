# Flutterby Roadmap

Flutterby is currently **under heavy development**. Many of its APIs are still in flux, some of its headline features are yet to be implemented, and it probably still has a certain number of bugs.
{:.intro}

#### Yet to be implemented:

- **Live Mode:** you can probably push your project to something like Heroku with a good `config.ru`, but there _will_ be issues, mostly around thread safety.

- **Node Persistence:** Flutterby lets you dynamically spawn new nodes, and some day in the future you will be able to persist them back to the file system.


#### In dire need of improvement:

- **Documentation**: The efforts to build solid documentation for Flutterby are just getting started, mostly involving this very website. More notably, the [RDoc reference](http://www.rubydoc.info/github/hmans/flutterby) is currently significantly lacking, with important methods being entire undocumented.

- **Performance:** Flutterby currently makes no attempt at caching anything, neither output of rendered nodes, nor things like template instances et al. There are many opportunities for improvement here.

- **API Stability:** many of Flutterby's APIs still need to be locked down. Until Flutterby reaches its 1.0 release, expect every new minor version to potentially contain breaking changes.


----

For a full list of currently known issues, planned features and other tidbits, please refer to the [Issues list on GitHub](https://github.com/hmans/flutterby/issues).
