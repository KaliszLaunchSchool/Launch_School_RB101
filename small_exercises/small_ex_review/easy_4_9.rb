=begin
Convert a Number to a String!
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. 
In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), 
Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing 
and manipulating the number.

Examples

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# Problem
- Take an integer and convert it into a string

# Algo
- Initiate a method
- Initiate an array
loop
  - Find the remainder of the number, push to array
  - Divide the number by 10
  - Break when num is 0
- Reverse the array
- Join the array

=end

INT_TO_STR = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(integer)
  array = []
  loop do
    array << integer.remainder(10)
    integer /= 10
    break if integer == 0 
  end
  array.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'