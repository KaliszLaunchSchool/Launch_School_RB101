=begin
# https://www.codewars.com/kata/546e2562b03326a88e000020
# Square every digit of a number and concatenate them.

# For example, if we run 9119 through the method, the method will return 811181
# because 9² is 81 and 1² is 1.

#Note: The method accepts an integer and returns an integer

# Problem
- Create a method which accepts an integer
  - Square every digit of the integer
  - Concatenate the resulting squares into a new integer
  - return that integer
  
Input: Integer
Output: Integer
Int: array, string

# Example 
9119 -> 9**2 1**2 1**2 9**2 ==> 81 1 1 81 --> 811181
3212 -> 3**2 2**2 1**2 2**2 ==> 9 4 1 4 --> 9414

#Algo
- Create a method which accpets an integer
- Create an array of each individual digit (array of strings)
  - Iterate through, turn into digits and raise to the power of 2 
  - join that together, turn back into integer
- Return the integer
=end

# def square_digits num
#   result = []
#   digits = num.digits
#   (digits.size - 1).downto(0) do |digit|
#       result << (digits[digit] ** 2 * (10 ** digit))
#     end
#   result.join.to_i
# end

def square_digits(digits)
  squared_digits = digits.to_s.chars.map do |digit|
    digit = digit.to_i 
    digit = digit ** 2
  end
  squared_digits.join.to_i
end

p square_digits(3212) == 9414
p square_digits(2112) == 4114
p square_digits(1111) == 1111
p square_digits(1234321) == 14916941
p square_digits(0) == 0