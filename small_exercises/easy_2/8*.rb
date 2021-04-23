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

=begin
LS Solution

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

Discussion
For brevity and simplicity, our solution doesn't try too hard to validate the user input. Your own solution 
probably should try to validate input and issue error messages as needed.

This solution first obtains the integer and operation to be performed from the user, then we perform the 
requested operation using one of two methods: compute_sum adds the numbers together, while compute_product 
multiplies them. Once we have the result, we just print it.

Further Exploration
The compute_sum and compute_product methods are simple and should be familiar. A more rubyish way of computing 
sums and products is with the Enumerable#inject method. #inject is a very useful method, but if you've never 
used it before, it can be difficult to understand.

Take some time to read the documentation for #inject. (Note that all Enumerable methods can be used on Array.) 
Try to explain how it works to yourself.

Try to use #inject in your solution to this problem.
=end