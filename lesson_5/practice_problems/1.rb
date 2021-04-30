=begin
Practice Problem 1
How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# Problem
Given an array or number strings
Sort bu descending numeric value
Input: Array
Output: Sorted array

# Example
arr = ['10', '11', '9', '7', '8']
    ==> ['11', '10', '9', '8', '7']

# Data
Array, strings, integers

# Algo
- Given an array of strings
- Convert each string into integer
- sort_by, descending
- Convert each back to string
- Return the sorted array
=end

arr = ['10', '11', '9', '7', '8']

arr_of_i = arr.map { |string| string.to_i }
arr_of_i.sort! { |a, b| b <=> a }
arr = arr_of_i.map { |integer| integer.to_s }
p arr

=begin
LS Solution

arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]

=end
