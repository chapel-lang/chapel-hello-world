// Data-parallel hello world

// This example, with detailed explanation comments, can also be found here:
//
//   https://github.com/chapel-lang/chapel/blob/main/test/release/examples/hello3-datapar.chpl
//
// The following pages are relevant to the features used in this example:
//
//   https://chapel-lang.org/docs/users-guide/base/configs.html
//   https://chapel-lang.org/docs/primers/loops.html

config const numMessages = 100;

forall msg in 1..numMessages do
  writeln("Hello, world! (from iteration ", msg, " of ", numMessages, ")");
