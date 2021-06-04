=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all 
elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Problem
- Create amethod which takes 2 parameters (arrays)
- Returns new array
- New array contains alternating elements of the original arrays

Input: 2 arrays
Output: 1 array

# Examples
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data
- Arrays
- Strings

# Algo
- Create a method which takes 2 parameters
- Initiate empty array
- until array is empty, pop the first element off the 1st array, and append it to the new array
- repeat with the 2nd array

# Code
=end

def interleave(first_array, second_array)
  new_array = []
  loop do 
    new_array << first_array.shift
    new_array << second_array.shift
    break if first_array.empty? && second_array.empty?
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

=begin
LS Solution

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

Discussion
In our solution, we use #each_with_index to get values and index numbers for array1, then use the index number 
to access the corresponding element in array2.

Further Exploration
Take a few minutes to read about Array#zip. #zip doesn't do the same thing as interleave, but it is very close, 
and more flexible. In fact, interleave can be implemented in terms of zip and one other method from the Array 
class. See if you can rewrite interleave to use zip.
=end