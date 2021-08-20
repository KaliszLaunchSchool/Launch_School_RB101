=begin
Exponent method
(https://www.codewars.com/kata/5251f63bdc71af49250002d8)

Create a method called "power" that takes two integers and returns the value of the first argument raised 
to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

Examples:

# Problem
- Create a method which accepts 2 integers
- Returns the value of the first argument raised to the value of the 2nd
- If argument 2 is neg, return nil 
- If arg 2 is 0, return 1
=end

def power(int, exponent)
  return nil if exponent.negative?
  result = 1
  exponent.times {|_| result *= int}
  result
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
