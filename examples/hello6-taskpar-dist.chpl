// Distributed memory task parallel hello world

// This example, with detailed explanation comments, can also be found here:
//
//   https://github.com/chapel-lang/chapel/blob/main/test/release/examples/hello6-taskpar-dist.chpl
//
// The following pages are relevant to the features used in this example:
//
//   https://chapel-lang.org/docs/users-guide/base/configs.html
//   https://chapel-lang.org/docs/primers/taskParallel.html
//   https://chapel-lang.org/docs/primers/locales.html
//   https://chapel-lang.org/docs/primers/loops.html

config const printLocaleName = true;
config const tasksPerLocale = 1;

coforall loc in Locales {

  on loc {

    coforall tid in 0..#tasksPerLocale {

      var message = "Hello, world! (from ";

      if (tasksPerLocale > 1) then
        message += "task " + tid:string + " of " + tasksPerLocale:string + " on ";

      message += "locale " + here.id:string + " of " + numLocales:string;

      if printLocaleName then message += " named " + loc.name;

      message += ")";

      writeln(message);
    }
  }
}
