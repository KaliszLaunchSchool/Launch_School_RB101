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

=begin
LS Solution
Solution

print 'What is the bill? '
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage? '
percentage = gets.chomp
percentage = percentage.to_f

tip   = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"
Discussion
We first obtain the amount of the bill from the user, not worrying too much about data validity for this simple problem. Then we get 
the tip percentage.

Next, we calculate the actual tip, and the total bill, then output the results.

Further Exploration
Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. Modify your solution so it always 
prints the results with 2 decimal places.

Hint: You will likely need Kernel#format for this.
=end