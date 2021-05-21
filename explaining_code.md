On `line x`, we are initializing the variable `var_name` and assigning the Integer/String/etc object `value` to it.

On `line x` the local variable `var_name` is reassigned.

On `lines x–x` we are defining the method `method_name` which takes __ parameter(s). On `line 10` we are calling the method and passing in the Integer/String/etc object `value` as an argument to it

On `line x` we are calling the method `loop` and passing in the `do..end` block as an argument.

On `line x` we are calling the method `puts` and passing in local variable `var_name` to it as an argument.

On `line x` we are breaking out of the loop by using thekeyword `break` if the value of the object that local variable `var_name` is referencing is equal to `something`.

`each` method takes a block. Returns the original array/hash
`select` block passed into select. Select returns a new array/hash based on the block's *return value*. If the *return value* of block evaluates to true, then the element is selected. If the return value of the block evaluates to false, then the element is not selected. New array/hash can be different size as the original
`map` returns a new array based on the block's *return value*. Each element is transformed based on the *return value*. New array is same size as original

Things to be careful about:
  For += (reassignment) var = var +/- argument
  On `line x` we are reassigning the local variable `var_name` to the return value of a method  call `Integer/String#+/-` on a local variable `var_name` with integer/string/etc `argument`  passed to it as an argument.

  String concatination(+): nondistructive, returns a new object (technically a method)
  Shovel operator(<<): method call, mutates the calling object


This code outputs 
This code returns
Side effect?