```
a = “Hello”
b = a
a = “Goodbye”
puts a
puts b
```
This code outputs `Goodbye` and returns `nil`, then outputs `Hello` and returns `nil`. On `line 2`,  the local variable `a` is initialized to the String object `Hello`.  On `line 3`,  the local variable `b` is initialized to the variable `a`, so `a` and `b` are both currently pointing at the String object `Hello`. On `line 4` the local variable `a` is reassigned, and now points to the String object `Goodbye`. So, on `line 5` we are calling the method `puts` and passing in local variable `a` to it as an argument. 
`puts` outputs the object passed to it, and returns `nil`, in this case, the String object `Goodbye`. Finally, on `line 6` we are calling the method `puts` and passing in local variable `b` to it as an argument. 
`puts` outputs the object passed to it, and returns `nil`, in this case, the String object `Hello`. This demonstrates variable assignment in Ruby
```
a = 4

loop do
  a = 5
  b = 3


  break
end

puts a
puts b
```
This code outputs `5` and returns `nil` and then throws a `NameError (undefined local variable or method b for main:Object)` This is due to local variable scope. On `line 12`,  the local variable `a` is initialized to the Integer object `5`. On `lines 14-20` we are defining the method `loop` and on `line 14` we are calling the method `loop` and passing in the `do..end` block as an argument. This creates a local scope for the method. So, On `line 15` the local variable `a` is reassigned, which we have access to within the relatively inner scope of the method. On `line 16`,  the local variable `b` is initialized to the Integer object `3`. When we output the variables on `lines 22 and 23`, variable `a` has been reassigned, but on `line 23` we get a NameError. Variables initialized in an inner scope are not available in an outer scope, so we can/not access `b`.

```
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```
TThis code outputs `3` and returns `nil`, when it outputts `2` and returns `nil`.  On `line 28`,  the local variable `a` is initialized to the Integer object `4`. On `line 29`,  the local variable `b` is initialized to the Integer object `2`. On `lines 31–35` we are defining the method `loop` and on `line 31` we are calling the method `loop` and passing in the `do..end` block as an argument. This creates a local scope for this method. Within the inner scope, On `line 32`,  the local variable `c` is initialized to the Integer object `3`. On `line 33` the local variable `a` is reassigned to the object that `c` is pointing to. `a` and `c` are both pointing at Integer object `3`. Because `a` was initialized in the relatively outer scope, we can access it from inside the `loop` method. On `line 34` we are breaking out of the loop by using the keyword `break`. Finally, On `lines 37 and 38` we are calling the method `puts` and passing in local variable `a and b` to it as an argument. `puts` outputs the object passed to it, and returns `nil`.  This demonstrates variable scope in ruby, and how variables initialized in the relatively outer scope can be accessed inside of blocks

```
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```
This code outputs:
```
hello
hello
hello
```
and returns `nil`. On `lines 43–50` we are defining the method `example` which takes 1 parameter. On `line 52` we are calling the method and passing in the String object `hello` as an argument to it. Local variable `str` is scoped within the method definition and now points to String object `hello`.

On `line 44`,  the local variable `i` is initialized to the Integer object `3`, this acts as a counter for our loop method. 

On `lines 45–49` we are defining the method `loop` and on `line 45` we are calling the method `loop` and passing in the `do..end` block as an argument. Inside the loop, on `line 46` we are calling the method `puts` and passing in local variable `str` to it as an argument. `puts` outputs the object passed to it (currently `hello`), and returns `nil`. On `line 47` we are reassigning the local variable `i` to the return value of a method call `Integer#-` on a local variable `i` with Integer `1`  passed to it as an argument. This decrements `i` by `1` on each loop iteration. Finally, on `line 48` we are breaking out of the loop by using the keyword `break` if the value of the object that local variable `i` is referencing is equal to `0`. This happens after 3 iterations of the loop, so the String object `hello` is printed 3 times. 

```
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)
```
This method outputs `Hello` then `Goodbye` and returns `nil`. On `lines 67–70` we are defining the method `greetings` which takes 1 parameter. On `line 74` we are calling the method and passing in the String object `Hello` (referred to by `word`) as an argument to it because on `line 72`, we are initializing the variable `word` and assigning the String object `Hello` to it. Once `word` is passed into `greetting` as an argument, `str` and `word` are now aliases for each other, both pointing at the String object `Hello`

Within the method, on `line 68` we are calling the method `puts` and passing in local variable `str` to it as an argument. `puts` outputs the object passed to it, and returns `nil`. Finally, on `line 69` we are calling the method `puts` and passing in local String object `Goodbye` to it as an argument. `puts` outputs the object passed to it, and returns `nil`.
```
arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```
This code outputs `Your total is 10` and returns `nil`, demonstrating variable scope and interations with blocks.

On `line 80`,  the local variable `arr` is initialized to the Array object `[1, 2, 3, 4]`. On `line 81`,  the local variable `counter` is initialized to the Integer object `0`. On `line 82`,  the local variable `sum` is initialized to the Integer object `0`.

On `lines 84–88` we are defining the method `loop` and on `line 84` we are calling the method `loop` and passing in the `do..end` block as an argument. Becuase `arr`, `counter` and `sum` are initialized outside of the block, they can be accessed within it. Within the local scope of the `loop` method,   On `line 85` we are reassigning the local variable `sum` to the return value of a method call `Integer#+` on a local variable `sum` with the return value of `arr[counter]` passed to it as an argument. This increments `sum` by each return value of `arr[counter]` which uses Array#[] indexed assignment, which mutates the original array, returning the element corresponding to the index. On `line 86` we are reassigning the local variable `counter` to the return value of a method call `Integer#+` on a local variable `counter` with Integer `1` passed to it as an argument, incremeneting `counter` by `1` during each iteration. Finally, on `line 87` we are breaking out of the loop by using the keyword `break` if the value of the object that local variable `counter` is referencing is equal to `arr.size`, ending the loop when it has iterated over the entire array.

```
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a
```
```
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
```
```
n = 10

1.times do |n|
  n = 11
end

puts n
```
```
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
```
```
a = "hi there"
b = a
a = "not here"
```
```
a = "hi there"
b = a
a << ", Bob"
```
```
a = [1, 2, 3, 3]
b = a
c = a.uniq
```
```
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
```
```
a = 5.2
b = 7.3

a = b

b += 1.1
```
```
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
```
```
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)


puts a
puts b
```
```
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y
```
```
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 
```
```
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 
```
```
a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr
```
```
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2
```