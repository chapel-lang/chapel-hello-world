// "Production-grade" hello world

// This example, with detailed explanation comments, can also be found here:
//
//   https://github.com/chapel-lang/chapel/blob/main/test/release/examples/hello2-module.chpl
//
// The following pages are relevant to the features used in this example:
//
//   https://chapel-lang.org/docs/primers/modules.html
//   https://chapel-lang.org/docs/users-guide/base/configs.html

module Hello {
  config const message = "Hello, world!";

  proc main() {
    writeln(message);
  }
}
