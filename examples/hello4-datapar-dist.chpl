// Distributed-memory data-parallel hello, world

// This example, with detailed explanation comments, can also be found here:
//
//   https://github.com/chapel-lang/chapel/blob/main/test/release/examples/hello4-datapar-dist.chpl
//
// The following pages are relevant to the features used in this example:
//
//   https://chapel-lang.org/docs/users-guide/base/configs.html
//   https://chapel-lang.org/docs/primers/loops.html
//   https://chapel-lang.org/docs/primers/distributions.html

use CyclicDist;

config const numMessages = 100;

const MessageSpace = {1..numMessages} dmapped cyclicDist(startIdx=1);

forall msg in MessageSpace do
  writeln("Hello, world! (from iteration ", msg, " of ", numMessages,
          " owned by locale ", here.id, " of ", numLocales, ")");
