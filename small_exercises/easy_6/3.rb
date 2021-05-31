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

=begin
LS Solution

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

Discussion
We'll take the brute force approach for this solution; it's the easiest form to both understand and write.

We start by setting the first 2 numbers, first and second, to 1 in accordance with the series definition. 
We start our index at 2 since we now have the 2nd Fibonacci number in second.

We then begin iterating through the numbers, exiting the loop when we finally encounter a Fibonacci number of 
the correct size (note that we check whether the result is >= the required number of digits; the > part of 
this comparison will probably never be true, but it's safer to ensure that we don't end up in an infinite loop, 
just in case there are no numbers with the exact number of digits we want).

During each iteration, we first increment our index, then compute the newest number in the sequence by adding 
the last 2 numbers together. After checking for the desired result, we then replace first and second with the 
pair of numbers that will be used in the next calculation.

Finally, we return our index; this is the index of the first Fibonacci number with number_digits digits.

Further Exploration
Fibonacci numbers are sometimes used in demonstrations of how to write recursive methods. Had we tried to use 
a recursive method, it probably would have resulted in the program running out of stack space. Ruby isn't well 
equipped to deal with the level of recursion required for a recursive solution.

We'll explore Fibonacci numbers again, along with the usual recursive solutions, later in the Medium exercises.
=end