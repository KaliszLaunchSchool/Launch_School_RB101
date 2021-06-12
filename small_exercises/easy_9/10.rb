=begin
Grocery List
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of 
the correct number of each fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Problem
- Write a methos which takes 1 parameter(nested array)
- Converts it into a flattened array with the correct number of each item

# Examples
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Data 
String
Integer
Array
Range?

# Algo
- Create a method which takes 1 parameter
- Initiate a resultant array
- Iterate through the original array
- Use times to print the fruit the appropriate number of times and push to new result array

# Code
=end

def buy_fruit(list)
  flattened_list = []
  list.each do |item, num|
    num.times {flattened_list << item}
  end
  flattened_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]