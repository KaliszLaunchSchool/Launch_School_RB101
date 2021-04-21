=begin
Sum of Digits
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# Problem
- Create a method with one argument 
  - Argument is a positive integer
- Sum the digits of that integer
- Return the sum

# Examples
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Data
- Integer
- String
- Array

# Algo
- Create a method which takes one argument 
  - Argument is a positive integer
  - Verify positive integer?
- Convert integer to a string
- Split the string
- Take the sum of the array
- Return the sum

# Code
=end

def sum(integer)
  each_number = integer.to_s.split(//)
  each_integer = each_number.map {|num| num.to_i}
  each_integer.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45