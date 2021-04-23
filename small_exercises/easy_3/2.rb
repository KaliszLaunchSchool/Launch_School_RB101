=begin
Arithmetic Integer
Write a program that prompts the user for two positive integers, and then prints the results of the following 
operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry 
about validating the input.

Example

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

# Problem
- Ask user for 2 positive integers
- Print the results of each operaation on the 2 numbers:
  - addition, subtraction, product, quotient, remainder, and power

Input: Integer/Float
Output: String? Integers?

# Examples
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

# Data 
Float
hash
String? Integer?

# Algo
- Ask user for 2 positive integers
- Store each in a variable
- Perform each operation
- Print each

# Code
=end

puts "==> Enter a postive number:"
number_1 = gets.chomp.to_f
puts "==> Enter the second positive number:"
number_2 = gets.chomp.to_f

addition = number_1 + number_2
puts "#{number_1} + #{number_2} = #{addition}"

subtraction = number_1 - number_2
puts "#{number_1} - #{number_2} = #{subtraction}"

product = number_1 * number_2
puts "#{number_1} * #{number_2} = #{product}"

quotent = number_1 / number_2
puts "#{number_1} / #{number_2} = #{quotent}"

remainder = number_1 % number_2
puts "#{number_1} % #{number_2} = #{remainder}"

power = number_1 ** number_2
puts "#{number_1} ** #{number_2} = #{power}"

operators = {addition, subtraction, product, quotient, remainder, and power }