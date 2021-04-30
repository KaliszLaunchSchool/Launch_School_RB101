=begin
Given this data structure, return a new array of the same structure but with the sub arrays being ordered 
(alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# Problem
- Given an array
- Return an array with the same structure with sorted sub arrays
  - Descending order
Input: Array
Output: Array

# Examples
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
==> [['c', 'b', 'a'], [3, 2, 1], ['green', 'blue', 'black']]

# Data
Array, string, integer

# Algo
- Iterate through the array
- Sort each subarray descending order
=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.each do |subarray|
  subarray.sort!.reverse!
end

p arr