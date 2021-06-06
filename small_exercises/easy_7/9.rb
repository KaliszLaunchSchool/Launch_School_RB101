=begin
Multiply All Pairs

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new 
Array that contains the product of every pair of numbers that can be formed between the elements of the two 
Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Problem
- Write a method which takes 2 arrays
- multiply each pair of numbers that can be formed between each element
- Returns a new array
- Sort array by increasing value

Input: 2 arrays
Output: 1 array

# Examples
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Data
- array
- integer

# Algo
- Create a method which takes 2 parameters
- Initiate an array 
- Iterate through the first array
  - For each number, multiply it with each number of the 2nd array
  - push each to the poduct array
  - Complete for each number in the first array

# Code
=end

def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |num|
    index = 0
    loop do
      product = num * array_2[index]
      products << product
      index += 1
      break if index == array_2.size
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]