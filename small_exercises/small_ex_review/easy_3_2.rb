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
Write a program that asks the user for 2 positive integers (no need to validate)
Prints 6 different operations with those 2 numbers

# Algo
- Ask the user for 2 different positive numbers 
- Perform and print 6 different operations with them

=end

puts "Enter the first number:"
num_1 = gets.chomp.to_i

puts "Enter the second number:"
num_2 = gets.chomp.to_i

sum = num_1 + num_2
difference = num_1 - num_2
product = num_1 * num_2
quotent = num_1 / num_2
remainder = num_1 % num_2
power = num_1 ** num_2

puts "==> #{num_1} + #{num_2} = #{sum}"
puts "==> #{num_1} - #{num_2} = #{difference}"
puts "==> #{num_1} * #{num_2} = #{product}"
puts "==> #{num_1} / #{num_2} = #{quotent}"
puts "==> #{num_1} % #{num_2} = #{remainder}"
puts "==> #{num_1} ** #{num_2} = #{power}"