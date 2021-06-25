=begin
Sum Square - Square Sum
Write a method that computes the difference between the square of the sum of the first n positive integers and 
the sum of the squares of the first n positive integers.

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

# Problem
- Create a method which takes 1 parameter (an integer)
- Computes the difference between
  - The square of the sum of the first n positive integers
  - The sum of the squares of the first n positive integers

# Data
- Integers
- Array

# Algo
- Create a problem which takes 1 parameter (an integer)
- Create an array from 1 to n
- Find the square of the sum of each num from 1 to n
  - Sum that array
  - Square that number
  - Return the calculation
- Find the sum of the squares of each num from 1 to n
  - Iterate through the array
    - Tansform each num **2
    - Sum that array
    - Return the calculation
- Subtract the square from the sum

# Code
=end

def square_of_the_sum(array_of_integers)
  sum = array_of_integers.sum
  sum ** 2
end

def sum_of_the_squares(array_of_integers)
  square = array_of_integers.map {|num| num ** 2}
  square.sum
end

def sum_square_difference(num)
  integers = (1..num).to_a
  difference = square_of_the_sum(integers) - sum_of_the_squares(integers)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

=begin
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

Discussion
The hardest part of this exercise is just figuring out what is meant by square of the sum and sum of the 
squares. Our first example demonstrates this clearly with a comment that shows how we arrive at the answer.

The primary solution shows all of the details of this operation; we loop through all of the integers between 1 
and n, and compute the sum and sum of squares as we go. At the end, we subtract the sum of the squares from the 
square of the sum.
=end
