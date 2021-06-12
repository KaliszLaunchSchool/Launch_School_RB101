=begin
Counting Up
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and 
the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

# Problem
- Write a method taking an integer
- Return array of all integers between 1 and the argument

# Examples
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

# Data 
- Integer
- Array

# Algo
- Create a method which accepts 1 argument
- Add 1 up to num to an array

# Code
=end

def sequence(num)
  array = []
  1.upto(num) {|i| array << i }
  array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
