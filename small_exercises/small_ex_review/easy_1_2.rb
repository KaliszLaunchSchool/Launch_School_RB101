=begin
Odd
Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. You may assume that the 
argument is a valid integer value.

Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#  Problem 
- Write a method which takes 1 integer
- Return true if the number's absolute value is odd
- Assume valid integer

# Data: Integer, boolean

# Algo
- Create a method which takes 1 parameter
- if the number is negative, multiply by -1 before evaluation
- if the number is odd, return true
- if the number is even or 0, return false
=end

def is_odd?(integer)
  if integer % 2 == 0
    return false
  else 
    return true
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true