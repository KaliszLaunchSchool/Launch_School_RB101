=begin
Tip calculator
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the 
tip and then display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

# Problem
- Create a tip calculator: prompt for bill, prompt for tip rate
- Compute tip
- Display tip, display total bill

Input: integer
Output: float, string

# Algo
- Get the bill and tip perdentage, store in variables
- Calculate tip
- Calculate total bill with tip
- Disolay that info
=end

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f / 100

tip = bill * tip_percentage
total_bill = tip + bill

puts "The tip is $#{tip.round(2)}"
puts "The total is $#{total_bill.round(2)}"
