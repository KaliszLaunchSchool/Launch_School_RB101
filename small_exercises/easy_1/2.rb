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

=begin
LS Solution

def is_odd?(number)
  number % 2 == 1
end

Discussion
To determine if a number is odd without using #odd? or #even?, we must check whether the number modulo 2 is 1. 
In Ruby, we use % to perform modulo operations, so we use it here to determine whether the number is odd.

Further Exploration
This solution relies on the fact that % is the modulo operator in Ruby, not a remainder operator as in some 
other languages. Remainder operators return negative results if the number on the left is negative, while 
modulo always returns a non-negative result if the number on the right is positive.

modulo	remainder
5 mod 2 == 1	5 rem 2 == 1
-5 mod 2 == 1	-5 rem 2 == -1
5 mod -2 == -1	5 rem -2 == 1
-5 mod -2 == -1	-5 rem -2 == -1
If you weren't certain whether % were the modulo or remainder operator, how would you rewrite #is_odd? 
so it worked regardless?

The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder
instead of %. Note: before version 2.4, Ruby used the Numeric#remainder method instead.
=end