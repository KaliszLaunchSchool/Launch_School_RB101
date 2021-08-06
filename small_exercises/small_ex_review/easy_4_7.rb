=begin
Convert a String to a Number!
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to 
an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will 
create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not 
use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all 
characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such 
as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by 
analyzing the characters in the string.

Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

# Problem
- Create a method which takes a string of digits and returns the number as an integer
  - May not use to_i  or integer constructor
  - Dont worry about +/- signs
  - Assume all chars will be numeric

Input: String
Output: Integer

# Algo
- Create a hash from 0 to 9, key is string, value is integer
- Create a method which takes a string
- b
- Iterate through the string using a loop
- For each char, change the key into the value
- Return the integer

=end

CONVERSION = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}


def string_to_integer(string)
  counter = 0
  integer = 0
  loop do
    integer += CONVERSION[string[counter]]
    counter += 1
    break if counter == (string.size)
    integer *= 10
  end
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570