=begin
Next Featured Number Higher than a Given Value

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose 
digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is 
not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater 
than the argument. Return an error message if there is no next featured number.

Examples:

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# Problem
- Create a method which takes 1 parameter, an integer 
- Return the next "featured number" greater than the argument
- Return an error if there is no next featured number
- Featured number: odd number, multiple of 7, every digit occurs exactly once

Input: Integer
Output: Integer

# Data
- Integer
- Array

# Algo
- Create a method which accepts 1 parameter (integer)
- Count up from the integer, and stop at the next integer which meets the parameters
  - Odd
  - Multiple of 7
  - Each digit occurs once
- If no number, return 'error'

# Code
=end

def digits_occur_once?(num)
  if num.to_s.split(//) == num.to_s.split(//).uniq
    true
  else 
    false
  end
end

def featured(num)
  if num < 9_999_999_999
    loop do 
      featured_num = []
      num += 1
      if num.odd? && (num % 7 == 0) && digits_occur_once?(num)
        featured_num << num
      end
      break if featured_num.empty? == false
    end
    num
  else
    "There is no possible number that fulfills those requirements"
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

=begin
=end
