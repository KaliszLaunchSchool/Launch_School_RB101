=begin
Multiples of 3 and 5
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then 
computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 
98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# Problem
- Create a method which accepts 1 parameter (an integer)
- Search between 1 and that integer
  - Final all multiples of 3 or 5
- Sum the multiples

Input: integer
Output: Integer

Data: integer, array

# Algo
- Create a method which accepts 1 parameter (integer)
- Create an empty results array
- Iterate from 1 up to the integer using upto
  - if num % 3 == 0 or num % 5 == 0, add that number to the results array
- Sum the results array


def multisum(integer)
  results = []
  1.upto(integer) do |num|
    if num % 3 == 0 || num % 5 == 0
      results << num
    end
  end
  results.sum
end
=end

def multisum(integer)
  results = []
  1.upto(integer) do |num|
    if num % 3 == 0 || num % 5 == 0
      results << num
    end
  end
  results.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168