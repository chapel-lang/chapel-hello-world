// Task-parallel hello world

// This example, with detailed explanation comments, can also be found here:
//
//   https://github.com/chapel-lang/chapel/blob/main/test/release/examples/hello5-taskpar.chpl
//
// The following pages are relevant to the features used in this example:
//
//   https://chapel-lang.org/docs/users-guide/base/configs.html
//   https://chapel-lang.org/docs/primers/taskParallel.html

config const numTasks = here.maxTaskPar;

coforall tid in 0..#numTasks do
  writeln("Hello, world! (from task ", tid, " of ", numTasks, ")");
