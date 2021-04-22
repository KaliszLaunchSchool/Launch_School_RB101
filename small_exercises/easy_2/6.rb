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
