# 'Hello, world!' in Chapel

[Chapel](https://github.com/chapel-lang/chapel/) is a programming language for productive parallel computing. This repository contains starter code for a Chapel project. Please see the [Learning Chapel](https://chapel-lang.org/learning.html) page to learn more of the language's features.

To get started with this template, you can either use [GitHub Codespaces](#using-a-codespace) or [your own machine](#using-your-machine).

For more code samples, consider trying out the [Primers](https://chapel-lang.org/docs/primers/),
or the [many programs from a past Chapel tutorial](https://github.com/chapel-lang/chapel/tree/main/test/exercises/Oct2023tutorial).

## Using a Codespace

> :warning: Because Codespaces are a virtualized environment running on shared hardware with a modest core count, don't expect parallelism or performance observed here to be reflective of what a native installation of Chapel can achieve.

The `chapel-hello-world` repo includes a `devcontainer.json` file, making it usable from GitHub Codespaces. When viewing this repository from GitHub's UI, click __Use this template > Open in a codespace__ to get started. The codespace includes the Visual Studio Code extension for Chapel, and tools such as [`chpl-language-server`](https://chapel-lang.org/docs/main/tools/chpl-language-server/chpl-language-server.html) and [`chplcheck`](https://chapel-lang.org/docs/main/tools/chplcheck/chplcheck.html).

In the Codespace, compile Chapel programs using the __Terminal__ tab by using the `chpl` compiler:

```bash
chpl hello.chpl
./hello
```

Although the Codespace is set to a single-locale (single-node) mode by default, you can simulate multiple nodes by setting the `CHPL_COMM` environment variable to `gasnet` when compiling.

```bash
# Compile a program that distributes computation to multiple nodes
CHPL_COMM=gasnet chpl examples/hello4-datapar-dist.chpl

# Run hello using two simulated nodes
./hello4-datapar-dist -nl 2 
```

To avoid having to include `CHPL_COMM` in each compilation command, you can
`export` it:

```bash
export CHPL_COMM=gasnet
chpl examples/hello4-datapar-dist.chpl
./hello4-datapar-dist -nl 2 
```

## Using Your Machine

Please follow the instructions on the [Download Chapel](https://chapel-lang.org/download.html) page to get set up with the Chapel compiler `chpl`. From there, you can compile and run the `hello.chpl` file in this repository as follows:

```bash
chpl hello.chpl
./hello
```

To make use of multiple nodes (or to simulate multi-node execution), please
refer to [Multilocale Chapel Execution](https://chapel-lang.org/docs/usingchapel/multilocale.html).
