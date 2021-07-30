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
- Create a method which takes 2 parameters (pos integer, boolean)
- Calculates a bonus
- If true, bonus = 1/2 salary, if false, bonus is 0

Input: integer, boolean
Output: integer

# Algo
- Create a method which takes 2 parameters (integer, boolean)
- If boolean = false
  - return 0
- If boolean = true
  - Divide the integer by 2, return that integer
=end
=begin
def calculate_bonus(salary, boolean)
  if boolean == false
    bonus = 0
  else
    bonus = salary / 2
  end
  bonus 
end
=end

def calculate_bonus(salary, boolean)
  boolean ? salary/2 : 0 
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000