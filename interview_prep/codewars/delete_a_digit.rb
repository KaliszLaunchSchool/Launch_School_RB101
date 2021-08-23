=begin
36. Delete a Digit
(https://www.codewars.com/kata/5894318275f2c75695000146/train/ruby)

Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

# Problem
- Create a method which accepts an integer
- Returns the max number that can be obtained if exactly one digit is deleted from the number
- Digit will be at least 2 chars long (greater than or equal to 10), and less than or equal to 1000000

Input: integer
Output: integer
Intermediate: string, array

# Algo
- Create a method which takes one parameter (integer)
- Turn the integer into an array if single digits
  - Create an array of all permutations of the digit which are the size of the digit's size - 1
  - Iterate through the permutations and turn back into digits
    - Return the max

=end

def delete_digit(num)
  single_digits = num.to_s.chars
  all_char_options = []
  single_digits.each_with_index do |num, index|
    digits = single_digits.dup
    digits.delete_at(index)
    all_char_options << digits
  end
  p all_char_options.map {|ary| ary.join.to_i}.max
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

def delete_digit(digit)
  digits = digit.to_s.chars
  results = []
  digits.each_with_index do |num, index|
    array = digits.dup
    array.delete_at(index)
    results << array.join
  end
  p results.map {|num| num.to_i}.max
end

 p delete_digit(152) == 52
 p delete_digit(1001) == 101
 p delete_digit(9) == 0

