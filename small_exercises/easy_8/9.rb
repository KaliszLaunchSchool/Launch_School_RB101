=begin
Reverse the Digits In a Number
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

Examples:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing 
results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

# Problem
Create a method which takes aa positive integer
Returns the saame number in reverse
No leading zeros!

Input: integer
Output: integer

# Examples
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 
reversed_number(12003) == 30021
reversed_number(1) == 1

# Data
Integer
String

# Algo
- Create a method which accepts 1 parameter
- Turn the integer into a string
- reverse the string
- If string[0] == 0, delete
- Turn the string back into integer

# Code
=end

def reversed_number(integer)
  num_as_string = integer.to_s
  loop do 
    if num_as_string.end_with?('0')
      num_as_string.chop!
    end
    break if num_as_string[-1] != '0'
  
  end
  num_as_string.reverse!.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 
p reversed_number(12003) == 30021
p reversed_number(1) == 1