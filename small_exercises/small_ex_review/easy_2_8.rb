=begin
Sum or Product of Consecutive Integers

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to 
determine the sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

# Problem
- Create a program which asks the user to input a number greater than 0
- Asks the user if they want to sum or product
- Compute the sum or product from 1 to the number

Input: string
Output: string

# Algo
- Create a program which outputs directions to the user
- Save user input
- Determine if user would like sum vs product
- Convert user input to integer
- Create a range from 1 to user input 
- use #reduce depending upon what the user chose
=end

puts ">> Please enter an integer greater than 0:"
user_num = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
user_decision = gets.chomp
user_decision.downcase!

loop do
  if user_decision == 's'
    sum = (1..user_num).reduce(:+)
    puts "The sum of the integers between 1 and #{user_num} is #{sum}."
    break
  elsif user_decision == 'p'
    product = (1..user_num).reduce(:*)
    puts "The product of the integers between 1 and #{user_num} is #{product}."
    break
  else
    puts ">> Try again. Enter 's' to compute the sum, 'p' to compute the product."
    user_decision = gets.chomp
  end
end