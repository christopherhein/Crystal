# Basics

First thing that you need to understand when getting started with Crystal is the
compiler. This is a CLI tool that can be invoked by running `crystal` this tool
needs to first be installed on your system. Depending on your operating system
this can be installed by a handful of package managers such as `brew`, or `apt`

> For this tutorial we're assuming you are running on macOS.

## Installation

```bash
$ brew update
$ brew install crystal-lang
```

Now that you have the CLI tool installed you can move on to writing your first
apps.

## Usage

First let's look at the basics, how to use the compiler. To do this lets create a new file called `hello.cr`

```crystal
puts "hello!"
```

Now that that we have that we can try running it using the `crystal` CLI tool to
run it, or compile it.

```bash
$ # crystal [path]
$ crystal basics/examples/hello.cr
=> hello!
```

If you'd like to actually to build file into a binary you can add `build` to the
command.

```bash
$ crystal build basics/examples/hello.cr
$ ls -l
=> -rwxr-xr-x  1 heichris  1896053708  998248 Nov  5 14:46 hello
```

That's a great precursor, but doesn't really show you much more than the `puts`
constant, which you might notices as being similar to `ruby`. Next we're going
to try something a little more useful like build and HTTP server.

```bash
# server.cr
require "http/server"

server = HTTP::Server.new(8080) do |context|
  context.response.content_type = "text/json"
  context.response.print "{\"hello\":\"Friend\",\"time\":#{Time.now.epoch}}"
end

puts "Listening on :8080"
server.listen
```

If you are familiar with `ruby` this syntax will feel very natural. 
