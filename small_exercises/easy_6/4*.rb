=begin
Reversed Arrays (Part 1)
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the 
Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

Note: for the test case list = ['abc'], we want to reverse the elements in the array. The array only has one 
element, a String, but we're not reversing the String itself, so the reverse! method call should return 
['abc'].

# Problem
- Write a method which takes 1 parameter (array)
- Reverses elements of each array
- Return value should be the same array object

Input: Array
Output: Same array, but with objects mutated & reversed

# Examples
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

# Data
- Array
- String

# Algo
- Define a method which takes 1 parameter
- Use sort by! to sort by reverse index
# Code
=end

def reverse!(array)
  left_index = 0
  right_index = - 1
  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true

=begin
LS Solution

This solution is straightforward; it sets one index to point to the beginning of the array, another index to 
point to the end of the array, and then walks through the Array exchanging elements at each step. Since we 
update the Array in place, we name the method reverse! instead of reverse.

Note that the loop terminates at the middle of the list. If we continued, we would end up rebuilding the 
original array.

The most interesting part of this code is the parallel assignment on line 6; this is a Ruby idiom for 
exchanging two values without requiring an intermediate variable. It's a handy idiom to remember.

In practice, of course, you would probably use Array#reverse! instead of writing this method. It helps, 
though, to write your own versions of standard methods so you can understand how they work, and how to use 
those principles in your own code.

Note that our solution here has both a side-effect (in mutating the array passed in to the method) and a 
meaningful return value (it returns the mutated array). Generally, this would be seen as bad practice (you 
want your methods to have either a side-effect, or a meaningful return value).
=end