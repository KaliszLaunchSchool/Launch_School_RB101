=begin
Practice Problem 13

Given the following data structure, return a new array containing the same sub-arrays as the original but ordered 
logically by only taking into consideration the odd numbers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

The sorted array should look like this:
[[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# Problem
- Given a nested array
- Return a new array wiich is sorted
  - The sort should only take into consideration odd numbers

Input: Array
Output: Array

# Examples
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

The sorted array should look like this:
[[1, 8, 3], [1, 6, 7], [1, 4, 9]]

#Algo
=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr_odd = []

arr.sort_by! do |subarray|
  subarray.select { |num| num.odd? }
end

p arr