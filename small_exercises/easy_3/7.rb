=begin
Odd Lists
Write a method that returns an Array that contains every other element of an Array that is passed in as an 
argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on 
elements of the argument Array.

Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# Problem
Input: Array
Output: Array

- Create a method which takes an array
- If index is even (because arrays begin as zero index, and we want to return every other from the 
first value, or 0th index), push that value to new array.
- Return new array

# Examples
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# Data
Arrays

# Algo
- Create a method which takes an array
- Initiate an empty return array
- Iterate through the original array by index
- If index is even (because arrays begin as zero index, and we want to return every other from the 
first value, or 0th index), push that value to new array.
- Return new array

# Code
=end


def oddities(array)
  odd_list = []

  array.each_index { |index| odd_list << array[index] if index.even? }
  odd_list
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6])  == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []