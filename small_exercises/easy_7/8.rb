=begin
Multiply Lists
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new 
Array that contains the product of each pair of numbers from the arguments that have the same index. You may 
assume that the arguments contain the same number of elements.

Examples:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Problem
- Create a method, takes 2 parameters
- Multiply the numbers that have the same index
- Output a new array with the products

Input: 2 arrays
Output: New array

# Examples
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Data
Array 
Integers

# Algo
- Create a method, takes 2 parameters
- Initiate a "products" array
- Iterate through the arrays with their indexes
- If indexes are the same, multiply
- Push the result to the new array

# Code
=end

def multiply_list(array_1, array_2)
  products = []

  to_multiply = array_1.zip(array_2)
  to_multiply.each do |numbers|
    products << calculate_product(numbers)
  end
  products
end

def calculate_product(numbers)
  product = 1
  numbers.each {|num| product *= num }
  product
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

=begin
LS Solution

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

Discussion
We take a direct approach, and simply iterate an index into both Arrays, appending each product to the products 
Array.

Further Exploration
The Array#zip method can be used to produce an extremely compact solution to this method. Read the 
documentation for zip, and see if you can come up with a one line solution (not counting the def and end lines).
=end
