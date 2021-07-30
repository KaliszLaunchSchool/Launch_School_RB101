=begin
Stringy Strings
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. The length of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Problem
- Write a method which accepts 1 parameter (positive integer)
- Returns a string with alternating 1's and 0's, always starting with 1
- length of the string should match the integer provided

Input: integer
Output: string

# Data: integer, string, array?

# Algo
- Create a method which takes 1 parameter (integer)
- Create a results string
- Add a 1, then a 0, alternating each, until the string is the length of the integer provided
- Return the new string

=end

def stringy(integer)
  result = ""

  loop do
    break if result.size == integer
    if result.empty?
      result << '1'
    elsif result[-1] == '1'
      result << '0'
    elsif result[-1] == '0'
      result << '1'
    end
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'