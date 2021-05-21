On `line 1` we initialize the variable `a` and set its value to `4`. On `line 2` we initialize the variable `b` and set its value as `2`. Both are initialized in the outer scope of our program.

On `lines 4-7` we call the `Integer#times` method on the integer `2`. We pass a block, defined by `do...end`,  as an argument, with one parameter, `a`.

A new variable `a` is initialized in the inner scope of this block, and it's value is set as `5`. The `puts` method is called and passed our local variable `a`. The method outputs `5` 2 times and then returns `nil`. 

On `line 9` the `puts` method is called once again and passed local variable `a` which outputs our outerscope variable `a`, as `a` within the method call was initialized in the inner scope of the method and cannot be accessed by the outer scope, which demonstrates variable shadowing. The `puts` method outputs `4` and reutrns `nil`.

Finally, on `line 10`, `puts` method is called and passed outer scope local variable `b` which outputs `2` and returns `nil`
