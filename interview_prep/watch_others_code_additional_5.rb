# Problem 5: Interweaving Arrays
=begin
Write a method that combines two Arrays passed in as arguments and returns a new Array that contains all elements 
from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty and that they have the same number of elements.

# Problem
- Create a method which takes 2 arrays
- Return a new array with all of the elements from both arguments
- elements should be alternating

Assume: each array has the same number of elements
  - arrays are non-empty

=end

def interleave(arr1, arr2)
  p arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, "a", 2, "b", 3, "c"]
