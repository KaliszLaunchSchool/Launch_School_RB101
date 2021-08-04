=begin
Multiplying Two Numbers
Create a method that takes two arguments, multiplies them together, and returns the result.

Example:

multiply(5, 3) == 15

# Problem
- Create a method which accepts 2 arguments (integers?, could it be floats?)
- Multiplies the number
- Returns

Input: 2 integers
Output: integer

# Algo
- Create a method which accepts 2 integers
- Multiply them together
- return the result
=end

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3) == 15