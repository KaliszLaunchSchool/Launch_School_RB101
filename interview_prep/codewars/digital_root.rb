=begin
46. Sum of Digits / Digital Root
(https://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby)

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than 
one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Here's how it works:

digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

# Problem
- Create a method which takes the sum of each of the numbers in a number n
- Continue summing numbers until a number of a single digit is returned

Input: integer
Output: integer
Intermed: String, array

# Algo
- Create a method which accepts an integer
- Create an array of the individual numbers of that integer
  - Check to see if the num is a single digit
    - If so, return that num
  - Else,
    - Sum that array, and use the new number as the integer
=end

def digital_root(integer)
  result = 0
  loop do 
    individual_nums = integer.to_s.chars.map {|num| num.to_i}
    sum = individual_nums.sum
    if sum.to_s.size == 1
      result += sum
      break
    else
      integer = sum
    end
  end
  result
end
p digital_root(16) == 7
p digital_root(456) == 6
