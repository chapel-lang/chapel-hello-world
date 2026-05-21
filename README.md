# 'Hello, world!' in Chapel

[Chapel](https://github.com/chapel-lang/chapel/) is a programming language
for productive parallel computing. This repository is a simple starting
point for Chapel in GitHub Codespaces, with runnable examples in
[examples/](examples).

> **Not in a Codespace yet?** See [Using a Codespace](#using-a-codespace)
below to get started.

> ⚠️ **Warning:** Codespaces runs in a virtualized environment with shared
hardware and a modest core count. Performance and available parallelism in
Codespaces are not representative of what you should expect on a native
Chapel installation.

## Compile And Run With The Run Button In Codespaces VS Code

1. Open [hello.chpl](hello.chpl).
2. Wait for the Chapel extension and language tools to finish loading in
   Codespaces.
3. Click the Run button in the editor (top right) once to compile the code,
   and once more to run the current file.

**Note:** The Run button does not support multi-locale (distributed)
programs.
Use the [terminal](#compile-and-run-in-the-terminal) for those.

If the Run button does not appear right away, wait a bit longer and reopen
the `.chpl` file.

## Compile And Run In The Terminal

Compile and run the main hello-world program:

```bash
chpl hello.chpl
./hello
```

Compile and run one of the included examples:

```bash
chpl examples/hello3-datapar.chpl
./hello3-datapar
```

## Simulated Distributed (Multi-Locale) Runs

The Codespace defaults to single-locale mode (`CHPL_COMM=none`).

To simulate multi-locale execution, compile with `CHPL_COMM=gasnet`:

```bash
CHPL_COMM=gasnet chpl examples/hello4-datapar-dist.chpl
./hello4-datapar-dist -nl 2
```

To avoid having to include `CHPL_COMM` in each compilation command, you can
`export` it (you need to do this once per shell session). After this, you can
compile as usual:


```bash
export CHPL_COMM=gasnet
chpl examples/hello4-datapar-dist.chpl
./hello4-datapar-dist -nl 2
```

## Learn More And Try More Programs

To explore more language features or play further, you can copy in examples
from [Chapel Primers](https://chapel-lang.org/docs/primers/) or a prior
tutorial. The following links are also helpful:


- [Learning Chapel](https://chapel-lang.org/learning.html)
- [Chapel Primers](https://chapel-lang.org/docs/primers/)
- [Chapel tutorial examples](https://github.com/chapel-lang/chapel/tree/main/test/exercises/Oct2023tutorial)
- [Multilocale Chapel Execution](https://chapel-lang.org/docs/usingchapel/multilocale.html)
- [Download Chapel](https://chapel-lang.org/download.html)

## Using a Codespace

This repository includes a `devcontainer.json` file, making it usable from
GitHub Codespaces. When viewing this repository from GitHub's UI, click
**Use this template > Open in a codespace** to get started. Or use the
direct link: https://codespaces.new/chapel-lang/chapel-hello-world

The codespace includes the Visual Studio Code extension for Chapel, and tools such as
[`chpl-language-server`](https://chapel-lang.org/docs/main/tools/chpl-language-server/chpl-language-server.html)
and
[`chplcheck`](https://chapel-lang.org/docs/main/tools/chplcheck/chplcheck.html).
