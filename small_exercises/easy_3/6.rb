=begin
Exclusive Or
The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both 
operands are falsey. The && operator returns a truthy value if both of its operands are truthy, and a falsey 
value if either operand is falsey. This works great until you need only one of two conditions to be truthy, 
the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly 
one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a 
truthy/falsy value as returned by || and &&.

Examples:

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# Problem
Input: Argument
Output: Boolean

- Write a function which takes 2 arguments
- Return true if one argument is truthy
- Return false otherwise
- Returns boolean values!

# Examples

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# Data
Argument
Boolean

# Algo
- Create a method taking 2 arguments
- If condition 1 == true && condition 2 == false, return true
- If condition 2 == true && condition 1 == false, return true
- Else, return false

# Code
=end

def xor?(argument_1, argument_2)
  if argument_1 == true && argument_2 == false
    true
  elsif argument_1 == false && argument_2 == true
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false