=begin
Running Totals

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each 
element has the running total from the original Array.

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Problem
- Create a method which takes one argument (an array of numbers)
- Returns an array with the same number of elements
- Each element has the running total from the oridinal array

Input: Array
Output: Array

# Examples
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Data 
Array 

# Algo
- Create a method which takes one argument(an array of numbers)
- Iterate through the array, adding each element in turn
- Return the new array

# Code
=end

def running_total(numbers)
  numbers_total = []
  count = 1
  unless numbers.empty?
    loop do
      next_number = numbers[0, count].sum
      numbers_total << next_number
      count += 1
      break if numbers_total.size == numbers.size 
    end
  end
  numbers_total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

=begin
LS Solution

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

Discussion
This solution does nothing fancy; it just walks through the array calculating the running total while building 
the resulting array. #map makes this really easy.

Further Exploration
Try solving this problem using Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods 
can be applied to Arrays).
=end