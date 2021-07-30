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
- Write a method which accepts 1 parameter (positive integer)
- returns the sum of each digit of the integer
- Should it just return the integer if there is only 1 integer?

Input: integer
Output: integer

# Algo
- Create a method which accepts 1 parameter (integer)
- Turn the integer into a string, split it, and sum that
- Return the sum
=end

def sum(integer)
  integer.to_s.chars.map {|num| num.to_i}.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45