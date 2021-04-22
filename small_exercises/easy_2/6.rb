=begin
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
# Problem
- Print all odd numbers 1 to 99
- Inclusive
- Each number on separate line

# Example
1
3
5
7
..
97
99

# Data
Range
Array?
Integer

# Algo
- Create inclusive range from 1 to 99
- Turn range into array
- Iterate through array, printing number if it is odd

# Code
=end

range = 1..99
array = range.to_a

array.each {|num| puts num if num.odd? }

=begin
LS solution
Solution

value = 1
while value <= 99
  puts value
  value += 2
end

Discussion
There are a variety of different ways to approach this problem, so don't be worried if your solution is significantly different.

Our solution simply takes a very basic approach of counting up from 1 to 99 by 2s, and printing each value.

Further Exploration
Repeat this exercise with a technique different from the one you just used, and different from the solution shown above. You may want 
to explore the use Integer#upto or Array#select methods, or maybe use Integer#odd?
=end
