=begin
Stringy Strings
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. The length of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.

## PROBLEM ##
- Write a method
- Takes a positive integer
- Returns a string of 1's and 0's
  - Starts with 1
  - Alternating
- Length of string = integer amount

Input = integer
Output = string

## EXAMPLES ##
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

## DATA ##
Integer
String

## ALGORITHM ##
- Create a method which takes 1 argument, an integer
- Create a string with the same length as the integer
- String is 1's and 0's alternating, starting with 1

## CODE ##
=end

def stringy(length)
  numbers = []

  length.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'