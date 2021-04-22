=begin
Tip calculator
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then 
display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

# Problem
- Create a program
- Prompt for bill amount
- Prompt for tip percentage
- Convert tip percentage to decimal
- Calculate tip amount
- Calculate total (tip amount plus bill amount)
- Print tip amount
- Print total

Input: Integer
Output: String, float

# Example
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

# Data


# Algo
- Prompt for bill amount
- Prompt for tip percentage
- Convert tip percentage to decimal
- Calculate tip amount
- Calculate total (tip amount plus bill amount)
- Print tip amount
- Print total

#Code
=end

puts "What is the bill amount?"
bill_amount = gets.chomp.to_f
puts "What is the tip percentage?" 
tip_percentage = gets.chomp.to_f * 0.01

tip_amount = bill_amount * tip_percentage
total_amount = bill_amount + tip_amount

puts "The tip is $#{tip_amount}"
puts "The total is $#{total_amount}"
