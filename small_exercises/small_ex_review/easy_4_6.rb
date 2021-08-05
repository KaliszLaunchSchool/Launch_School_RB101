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
- Create a method which takes an array of numbers
- returns a new array with the same number of elements, but each element is a running total of the sums of the elements so far

Input: array
Output: array

# Algo
- Create a method which accepts 1 parameter (array)
- Create a running_totals empty array
- Create a sum variable
- Iterate through the original array
  - add each element to the sum array
  - add the sum integer to the running totals array
- return the new array
=end

def running_total(array)
  running_totals_array = []
  sum = 0
  array.each do |num|
    sum = sum + num
    running_totals_array << sum
  end
  running_totals_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []