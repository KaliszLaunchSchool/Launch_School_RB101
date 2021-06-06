=begin
Sum of Sums
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence 
for that Array. You may assume that the Array always contains at least one number.

Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# Problem
- Create a method which accepts 1 parameter
- Parameter is an array of numbers
- Returns the sums of each leading subsequence

input: array
output: integer(s)

# Examples
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# Data 
- Array
- Integers

# Algo
- Create a method which accepts 1 parameter (array)
- Iterate through the array with the index 
  - Return the first number
  - Add the first number to the 2nd number
  - Add that sum to the first
  - Cont to add each number 
- Return the sequence of additions 

# Code
=end

def sum_of_sums(array_of_integers)
  to_add = []
  array_of_integers.each_with_index do |num, index|
    loop do
      break if index < 0
      if index >= 0
        to_add << array_of_integers[index]
        index -= 1 
      end
    end
  end
  p to_add.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
