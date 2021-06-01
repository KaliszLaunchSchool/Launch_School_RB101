=begin
Combining Arrays
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from
the argument Arrays. There should be no duplication of values in the returned Array, even if there are 
duplicates in the original Arrays.

Example

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Problem
- Write a method, takes 2 arrays
- Returns an array that conttains all of the vaalues
- No duplications of the elements

# Example
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Data
- Array

# Algo
- Create a method, takes 2 parameters
- merge the parameters
- call uniq!
- Return the array

# Code
=end

def merge(array_1, array_2)
  merged_array = array_1.concat(array_2)
  merged_array.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
