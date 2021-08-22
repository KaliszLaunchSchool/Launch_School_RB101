=begin
37. Multiples of 3 or 5
(https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby)
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

# Problem
- Provided an integer, find all numbers that are multiples of 3 or 5 below that number (NOT including the number)
- Sum those numbers
- Return the sum

Input: integer
Output integer
Intermed: Array

# Algo
- Create a method which accepts 1 parameter (an integer)
- Initiate a results array
- Iterate from 1 up to the number provided
  - Determine if the number can be divided evenly by 3 or 5
    - If yes, add to the results array
- Return the sum of every number in the results array
=end

def solution(num)
  results = []
  1.upto(num - 1) {|n| results << n if n % 3 == 0 || n % 5 == 0}
  results.sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
