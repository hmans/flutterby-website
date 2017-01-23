# How Flutterby Works

<div class="intro" markdown="1">
A high-level overview of how Flutterby works internally.
</div>

Everything Flutterby does revolves around the **site tree**, a graph of Ruby objects that is generated at startup time. This is the typical lifecycle of a Flutterby application:

1. **Import:** Flutterby crawls through the source directory of your project and builds the **site tree** from the files it encounters. Each file is represented as a **node** that has access to the file's contents as well as its metadata.
2. **Data Extraction:** Flutterby extracts metadata from available front matter or a prefix found in the file's original name. Also, if the file is a JSON, YAML or TOML file, its data is imported, too.
3. **Setup:** Flutterby walks the entire site tree and performs any available initializers. These can contain code that modify existing nodes or the actual site tree structure. (For example, you could dynamically generate a monthly archive for your blog. _TODO: add link to example._)
4. **Exporting:** Now it's time for Flutterby to export a static version of your site or serve it dynamically via HTTP. For each file that is exported (or requested), Flutterby will dynamically apply its configured filters (controlled through the additional extensions of the source file name. _TODO: all link to filter documentation._)
