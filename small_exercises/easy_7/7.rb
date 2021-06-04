=begin
Multiplicative Average
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the 
result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume 
the array is non-empty.

Examples:

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Problem
- Write a method which takes an array 
- Multiply the numbers in the array
- Divide by the size of the array
- Print the result rounded to decimals
- Array is non-empty

Input: Array
Output: Float

# Examples
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Data
- Array
- Integer
- Float 

# Algo
- Create a method which takes 1 parameter
- Convert numbers to floats, and multiply all of the numbers
- Divide the poroduct by the size of the array
- Format the result

# Code
=end

def show_multiplicative_average(array)
  numerator = 1
  array.each {|number| numerator *= number.to_f }
  divisor = array.size
  result = numerator / divisor
  p "The result is %.03f" % [result]
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
