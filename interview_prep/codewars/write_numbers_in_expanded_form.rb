=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

expanded_form(12) == '10 + 2'
expanded_form(42) == '40 + 2'
expanded_form(70304) == '70000 + 300 + 4'

# Problem
- Given a number, return a string in expanded form

Input: Integer 
Output: string

# Algo
- Write a method which accepts 1 parameter (integer)
- Convert the integer into a string
- Find the size of the string
- Split the string into an array
  - Iterate through the array, adding string size -1 '0''s  after each element, decrementing the number of 0's on each iteration
- Join the new array with + and return
=end

def expanded_form(integer)
  number_of_zeros = integer.to_s.size - 1 
  expanded = []
  integer.to_s.chars.each do |num|
    unless num == '0' 
    zeros = '0' * number_of_zeros  
    number_of_zeros -= 1 
    expanded << num + zeros
    end
  end
  expanded.join(' + ')
end

expanded_form(12) == '10 + 2'
expanded_form(42) == '40 + 2'
expanded_form(70304) == '70000 + 300 + 4'
expanded_form(420) == '400 + 20'