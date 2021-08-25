=begin
49. Playing with digits
(https://www.codewars.com/kata/5552101f47fc5178b1000050/train/ruby)

Some numbers have funny properties. For example:

89 --> 8¹ + 9² = 89 * 1

695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2

46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p

we want to find a positive integer k, if it exists, such as the sum of the digits of n taken to the successive powers of p is equal to k * n.
In other words:

Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k

If it is the case we will return k, if not return -1.

Note: n and p will always be given as strictly positive integers.

dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals 92 * k
dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

# Problem
- Create a method which takes 2 integers (num1, num2)
- Split num1 into its respective digits
- Raise the first digit to num2, the next to num2+1, etc
- Find a number that num1 * that num = the sum of the integers raised to the powers

# Algo
- Create a method which accepts 2 parameters(num1, num2)
- Split num1 into an array of digits
  - Iterate through the array, raising each number to their respective powers (helper method?)
  - Sum each digit raised by the exponents

- Take the sum, and the original num1
  - See what multiplier, if any, can have num1 * n == sum
  - return n
  - if n * num1 is greater than the sum, return -1


=end

def dig_pow(num1, num2)
  array_of_digits = num1.to_s.chars
  target_num = find_target_num(array_of_digits, num2)
  1.upto((target_num / 2)) do |n|
    return n if n * num1 == target_num
  end
  -1
end

def find_target_num(array, num2)
  digits_raised = []
  counter = 0 
  array.each_with_index do |digit, index|
    digits_raised << digit.to_i ** (num2 + counter)
    counter += 1
  end
  target_num = digits_raised.sum
end

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2
