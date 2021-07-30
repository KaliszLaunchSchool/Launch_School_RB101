=begin
Array Average
Write a method that takes one argument, an array containing integers, and returns the average of all numbers 
in the array. The array will never be empty and the numbers will always be positive integers. Your result 
should also be an integer.

Examples:

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
The tests above should print true.

# Problem
- Create a method which takes an array of itegers
- Returns the averafe of all numbers
Rules: attay will not be empty, numbers will all be positive

Input: array
Output: integer

# Algo
- Create a method which takes 1 parameter (array)
- Sum the array
- Divide the sum by the size of the array
- Return the result integer

# Data: 
=end

def average(array)
  denominator = array.size
  numerator = array.sum
  result = numerator/denominator
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40