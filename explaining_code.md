This code outputs `some output` and returns `nil`.

On `line x`,  the local variable `var_name` is initialized to the integer/string/etc object `value`.

On `line x` the local variable `var_name` is reassigned.

On `lines x–x` we are defining the method `method_name` which takes __ parameter(s). On `line x` we are calling the method and passing in the Integer/String/etc object `value` (referred to by `var`) as an argument to it. Once `var` is passed into the method, `var` and `method_var` are alaises for each other, both pointing at the Integer/String/etc object `value`.

( Local variable `local_var` is scoped within the method definition. Since `local_var` and `var`are both referring to the same object, both `local_var` and `var` now point to Integer/String/etc object `value` )

On `lines x–x` we are defining the method `loop` and on `line x` we are calling the method `loop` and passing in the `do..end` block as an argument. 

On `line x` we are calling the method `times` on the Integer object `num` and passing in the `do..end` block as an argument.

On `line x` we are calling the method `puts` and passing in local variable `var_name` to it as an argument. 
`puts` outputs the object passed to it, and returns `nil`
`p` outputs and returns the object passed to it

On `line x` we are breaking out of the loop by using the keyword `break` if the value of the object that local variable `var_name` is referencing is equal to `something`.

On `lines x-x` we invoke the `each/select/map` method on the local variable `var_name` and pass in the do..end block as an argument. As the `each/select/map` method iterates over each element in the array, it DOES ONE OF THE THINGS BELOW. 

`each` method takes a block. Returns the original array/hash
`select` block passed into select. Select returns a new array/hash based on the block's *return value*. If the *return value* of block evaluates to true, then the element is selected. If the return value of the block evaluates to false, then the element is not selected. New array/hash can be different size as the original
`map` returns a new array based on the block's *return value*. Each element is transformed based on the *return value*. New array is same size as original

Method definitions cannot directly access local variables initialized outside of the method definition, nor can local variables initialized outside of the method definition be reassigned from within it. 

A block can access local variables initialized outside of the block and can reassign those variables. Methods can access local variables passed in as arguments.
Methods can access local variables through interaction with blocks.
So, method definition sets a scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it interacts (if at all) with a block. We can then think of method invocation as using the scope set by the method definition. If the method is defined to use a block, then the scope of the block can provide additional flexibility in terms of how the method invocation interacts with its surroundings.

Things to be careful about:
  For += (reassignment) var = var +/- argument
  On `line x` we are reassigning the local variable `var_name` to the return value of a method call `Integer/String#+/-` on a local variable `var_name` with integer/string/etc `argument`  passed to it as an argument.

  String concatination(+): nondistructive, returns a new object (technically a method)
  Shovel operator(<<): method call, mutates the calling object
    - On `line x` we call the Array/String#<<  method on variable/String/Integer/Arrray `object`, referred to by local variable `var`, which implements mutating concatenation on the calling object. Local variable `var` is scoped within the method definition

  `arr[counter]` uses Array/String/Hash#[] indexed assignment, which mutates the original array, returning the element corresponding to the index.

Topics of interest:
- local variable scope, especially how local variables interact with method invocations with blocks and method definitions
  - This creates a local scope for this method. Variables initialized in an inner scope are not available in an outer scope, so we can/not access `var name`
  - This demonstrates local variable scoping rules in Ruby; specifically the fact that a local variable initialized outside of a block is accessible inside the block.
  - This creates a new local scope for this method, defines a new local variable `n` and assigns the Integer/String/Array object `object` to it. On `line x` when we call the method `method` and pass in local variable `local_var` to it as an argument, it outputs the local variable in the relatively outer scope. This demonstrates variable shadowing and local variable scope
  - variable shadowing, prevents access to the outer scope local variable or changing the outer scope local variable
  - method definition as setting a certain scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it interacts (if at all) with a block. We can then think of method invocation as using the scope set by the method definition.

- mutating vs non-mutating methods, pass-by-reference vs pass-by-value
  - Mutating methods change the value (or state) of an object; non-mutating methods do not. The object that may or may not be mutated is of concern when discussing whether a method is mutating or non-mutating. For example, the method String#sub! is mutating with respect to the String used to call it, but non-mutating with respect to its arguments.
  - Most methods you will encounter don’t mutate their arguments or caller. Some do mutate their caller, but few mutate the arguments. All methods are non-mutating with respect to immutable objects
  - Assignment merely tells Ruby to bind an object to a variable. This means that assignment does not mutate an object
  - While = is not an actual method in Ruby, it acts like a non-mutating method, and should be treated as such
  - Certain operations, like setters and indexed assignments should always be treated as mutating methods; others, like assignment and the assignment operators (+=, *=, etc) are always non-mutating.
  - Arguments that are passed by copy cannot be mutated, so Ruby must use pass by reference when a method can mutate its arguments.
  -  Immutable objects seem to be passed by value, while mutable objects seemed to be passed by reference. Assignment can break the binding between an argument name and the object it references. 
  - A pass by value method only has a copy of the original object. Operations performed on the object within the method have no effect on the original object outside of the method.
  - Integers are immutable, and, because ruby treats immutable objects as pass by value operations performed on the object within the method have no effect on the original object outside of the method.
  - A pass by reference method allows operations within the method to affect the original object
  - In Ruby: when an operation within the method mutates the caller, it will affect the original object
  - Ruby is pass by value for immutable objects, pass by reference otherwise

In Ruby, re-assigning the object within the method doesn't affect the object outside the method. Example:

- working with collections (Array, Hash, String), and popular collection methods (each, map, select, etc). 
  - Indexed assignment, such as that used by String, Hash, and Array objects looks exactly like assignment, which is non-mutating. However, in this case, it is mutating. #[] mutates the original object (the String, Array, or Hash). It doesn’t change the binding of each variable (str, array, hash). This method is named #[]=, and #[]= is expected to mutate the object to which it applies. It does not create a new object.
  - The #<< method used by collections like Arrays and Hashes, as well as the String class, implements concatenation; this is very similar to the += operator. However, there is a major difference; += is non-mutating, but #<< is mutating. 
  - Collections which use zero index: string, array (ordered by index)
  - Collections which use key-value pairs: Hash (keys must be unique! but values can be duplicated)
  - When referencing an item by its key you must use the correct object type.
  - be careful when #[] returns nil. Always try to think about whether nil is the real element in the array or if it's Ruby's way of telling us we've gone beyond the array boundary
  - Elements in String and Array objects can be referenced using negative indices, starting from the last index in the collection -1 and working backwards

- variables as pointers
- puts vs return
- false vs nil and the idea of "truthiness"
- method definition and method invocation
- implicit return value of method invocations and blocks
- how the Array#sort method works
  - Sorting is essentially carried out by comparing the items in a collection with each other, and ordering them based on the result of that comparison. Comparison is at the heart of how sorting works.
  - Any object in a collection that we want to sort must implement a <=> method. This method performs comparison between two objects of the same type and returns a -1, 0, or 1, depending on whether the first object is less than, equal to, or greater than the second object; if the two objects cannot be compared then nil is returned.
  - The return value of the <=> method is used by sort to determine the order in which to place the items. If <=> returns nil to sort then it throws an argument error.
  -  String#<=> compares multi-character strings character by character, so the strings beginning with 'a' will come before those beginning with 'b'; if both characters are the same then the next characters in the strings are compared, and so on.

This code outputs 
This code returns
Side effect?