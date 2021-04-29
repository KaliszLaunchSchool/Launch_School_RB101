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
puts multiply([5, 3], 3)

=begin
LS Solution

def multiply(n1, n2)
  n1 * n2
end

Discussion
There are a couple of points of interest for this solution.

Focus on the return value. Consider the below incorrect implementation.

def multiply(n1, n2)
  puts n1 * n2
end

multiply(1, 2) # returns nil
If you run the code above, you may think that this method fulfills the requirements of the exercise, but it 
doesn't. It's important to remember to focus on the method's return value and not its output. Also, keep in 
mind that puts returns nil,and the above incorrect implementation will always return nil.

The current implementation uses the * operator, which behaves differently depending on what the left hand 
expression is. For example:

5 * 2       # => 10
"hi" * 2   # => "hihi"

Therefore, our method implementation also suffers from this behavior since we're using the * operator.

Further Exploration
For fun: what happens if the first argument is an Array? What do you think is happening here?
  Displays the array n2 number of times
  p [5, 3] * 2   # => "[5, 3, 5, 3]
=end
