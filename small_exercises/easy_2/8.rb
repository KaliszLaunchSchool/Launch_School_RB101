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
- Ask user to enter a number greater than zero
- Ask user if they want the product or sum of all numbers between 1 and the number
- Compute the sum or product
- Output the sum or product

Input: integer
Output: string

# Example

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

# Data 
Integer
String
Range

# Algo

- Ask user to provide a number n (greater than 0)
- Create a range from 1 to n
- Ask user to enter 's' to compute the sum, 'p' to compute the product
- If s, compute the sum
  - Compute the sum of all integers from 1 to n
- If p, compute the product 
  - Compute the product of all integers from 1 to n
- Else, try again

# Code
=end

puts '>> Please enter an integer greater than 0:'
number = gets.chomp.to_i
range = (1..number).to_a

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  user_choice = gets.chomp

  if user_choice == 's'
    sum = range.sum
    puts "The sum of the integers between 1 and #{number} is #{sum}."
    break
  elsif user_choice == 'p'
    product = range.reduce(1, :*) 
    puts "The product of the integers between 1 and #{number} is #{product}."
    break
  else
    puts "Please enter a valid choice"
  end
end