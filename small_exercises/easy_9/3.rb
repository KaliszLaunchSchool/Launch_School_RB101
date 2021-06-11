=begin
Always Return Negative
Write a method that takes a number as an argument. If the argument is a positive number, return the negative 
of that number. If the number is 0 or negative, return the original number.

Examples:

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

# Problem
- Write a method which takes 1 parameter
- If number is positive, return the negative
- If number is negative or 0, return the original

Input: Integer
Output: Integer

# Examples
negative(5) == -5
negative(-3) == -3
negative(0) == 0 

# Data 
- Integer

# Algo
- Create a method which takes 1 parameter (integer)
- If integer is positive, return integer * -1
- Else, return integer

# Code
=end

# def negative(num)
#   if num.positive?
#     num *= -1
#   end
#   num 
# end

def negative(num)
  num.positive? ? num *= -1 : num 
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 