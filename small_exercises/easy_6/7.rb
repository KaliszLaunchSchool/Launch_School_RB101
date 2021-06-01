=begin
Halvsies
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that 
contain the first half and second half of the original Array, respectively. If the original array contains an 
odd number of elements, the middle element should be placed in the first half Array.

Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Problem
- Write a method which takes 1 parameter (array)
- Returns a pair of nested arrays
  - Contains the fist half aand second half of the OG array
  - if original array is odd, the middle element should be placed in the first half

# Examples
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Data
- Arrays

# Algo
- Create a method which takes 1 parameter (array)
- Splits arraay into 2 nested arrays

# Code
=end

def halvsies(array)
  split_arrays = []
  size = array.size / 2
  if array.size.even?
    split_arrays << array.slice!(0..size - 1 )
    split_arrays << array
  else
    split_arrays << array.slice!(0..size)
    split_arrays << array
  end
  split_arrays
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
