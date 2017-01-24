# Getting Started

<div markdown="1" class="intro">
It's incredibly easy to get started with Flutterby -- either use the **built-in project generator**, or start from scratch with nothing but a **plain empty directory**.
</div>


#### Using the Generator

Flutterby comes with a CLI executable named `flutterby` that you can use to generate a Flutterby project as a base to develop on. Simply invoke the following command:

~~~ bash
flutterby new myproject
~~~

Where, of course, `myproject` is the name of the directory that will contain your project.

The `site` subdirectory contains the actual source for your website. This is the directory you will be doing most development in.

The project skeleton provided by this generator contains some basic features you will probably need in most projects (like stylesheet and JavaScript files.) You can choose to build your site on top of this code; but you can just as well wipe the contents of the `site` directory and start from scratch.


#### Starting a Local Development Server

You can now change into this directory and start a local development server:

~~~ bash
cd myproject
flutterby serve
~~~

This will start the development server on the default port of 4004. You should now be able to access your site via [http://localhost:4004](http://localhost:4004).


#### Building a Static Copy of your Website

Flutterby can export a static version of your website which you can then deploy to your own server, S3, or any other static site hosting provider. Simply invoke the following command from your project directory:

~~~ bash
flutterby build
~~~

The static version of your website will be stored in the `_build` subdirectory. You can now upload the contents of your website to your server.



**Hint:** Try `flutterby help` or `flutterby help <command>` to get a list of available options!
{:.hint}
