=begin
Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns 
true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

Examples:

Copy Code
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

## Problem ##
- Method that takes an integer
  -Integer may be positive, negative, or 0
- Reurns "true" if absolute value of integer is odd
- Assime argument is valid integer

- Is zero considered even or odd? Even (see examples)

## Examples/Test ##
Input: Integer
Output: boolean

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

## Data ##
Integers
Boolean

## Algorithm ##
- Write a method which takes an integer
- Evaluate the integer
  - If odd, return true
  - If even, return false
- Return appropriate boolean

## Code ##
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