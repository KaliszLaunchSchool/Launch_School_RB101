=begin
Multiplying Two Numbers
Create a method that takes two arguments, multiplies them together, and returns the result.

Example:

multiply(5, 3) == 15

# Problem
- Create a method with 2 arguments
- Multiply the numbers
- Return the result

Input: integers
Output: integers

# Example
multiply(5, 3) == 15
multiply(-5, -3) == 15
multiply(-5, 3) == -15
multiply(5, -3) == -15
multiply(5, 0) == 0

# Data
Integers

# Algo
- Create a method which takes 2 integers
- Multiply the integers together
- Return the product

# Code
=end

def multiply(num1, num2)
  product = num1 * num2
end

puts multiply(5, 3) == 15
puts multiply(-5, -3) == 15
puts multiply(-5, 3) == -15
puts multiply(5, -3) == -15
puts multiply(5, 0) == 0