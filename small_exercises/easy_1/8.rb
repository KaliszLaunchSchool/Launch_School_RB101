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

## Problem ##
- Write a method
- Take an array which contains integers
- Find the average of all the numbers in the array
- Rules
 - Array will not be empty
 - Integers always positive

Input: array containing integers
Output: integer

Integer or float division? Integer!

## Examples ##

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

## Data ##
Array
Integer

## Algorithm ##
- Initiate method which takes one argument (an array)
- Create a 'sum' variable
  - count the length of the array, 
  - add to 'sum' variable 
  - Sum the numbers from the array 
- assign thhe length of the array to 'divisor' variable
- Divide the sum by the length 

#Problem
- Count the lent

## Code ##
=end

def average(array)
  divisor = array.length
  sum = array.sum
  average = sum/divisor
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40