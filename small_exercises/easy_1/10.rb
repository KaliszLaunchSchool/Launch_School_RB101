=begin
What's my Bonus?
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a 
given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the 
bonus should be 0.

Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Problem
- Create a method which takes 2 arguments (integer, boolean)
- if statement depends on Boolean 
  - If true: bonus is half salary
  - If false, bonus is 0

# Examples
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Data
Integer 
Boolean

# Algo
- create calculate_bonus method taking 2 arguments
- if boolean false
  - Return Bonus = 0
- if boolean true
  - Return bonus = salary/2

#Code
=end
def calculate_bonus(salary, boolean)
  if boolean == false
    bonus = 0
  elsif boolean == true
    bonus = salary / 2
  end
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000