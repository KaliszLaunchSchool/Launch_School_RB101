=begin
Fibonacci Number Location By Length
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 
1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears 
throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid 
rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially 
considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of 
digits specified as an argument. (The first Fibonacci number has index 1.)

Examples:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
You may assume that the argument is always greater than or equal to 2.

# Problem
- Create a method which takes 1 parameter (integer)
- Returns the INDEX of the first Fibonacci number that has the number of digits specified
- The first Fibonaacci number has index 1

- Input: integer
- Output: Integer

# Examples

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

# Data 
- Integer, array

# Algo
- Create a method which calculates the fibonaacci sequence
- Create a method which takes 1 parameter (integer)
- Iterates through the Fibonacci sequence, searching for the number with the size specified by the parameter
- Returns the index of that number (Fib begins with index of 1)
# Code
=end

def fibonacci_sequence(length)
  fibonacci = []
  counter = 0
  fibonacci[counter] = 1
  fibonacci[counter + 1] = 1
  loop do
    fibonacci_next = fibonacci[counter] + fibonacci[counter + 1]
    fibonacci << fibonacci_next
    counter += 1
  break if fibonacci_next.to_s.size == length
  end
  fibonacci
end

def find_fibonacci_index_by_length(length)
  num = fibonacci_sequence(length).last
  fibonacci_sequence(length).index(num) + 1
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847