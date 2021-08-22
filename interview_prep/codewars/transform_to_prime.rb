=begin
43. Transform To Prime
(https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/ruby)

Task :
Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal 
the closest prime number .

Notes
List size is at least 2 .
List's numbers will only have positives (n > 0) .
Repetition of numbers in the list could occur .
The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which 
will make *the sum of the List** equal the closest prime number (7)* .
2-  minimumNumber ({2,12,8,4,6}) ==> return (b, 
5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which 
will make *the sum of the List** equal the closest prime number (37)* .
3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since, the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which 
will make *the sum of the List** equal the closest prime number (191)* 

# Problem
- Create a method which accepts 1 parameter (an array of integers)
- Sum the integers
  - Based on the result, find the next prime number
- return the next prime number - the sum of the integers

Rules: Numbers can be repeated in lists, the list will only be positive numbers, list size will be at least 2

# Algo
- Create a method which can find the next prime number
  - Create a method which takes 1 integer
    - increment the integer
    - from 2 to that integer -1 
      - check to see if integer % num == 0
    - If so, it is not a prime number, and move to the next number
    - Break when a prime number is found

- Create a method which accepts an array of integers
  - Sum the array
  - Find the next prime number
  - Subtract the next prime number from the sum
  - Return that number
=end

def prime?(int)
  2.upto(int - 1) do |num|
    return false if int % num == 0
  end
  true
end

def next_prime(int)
 loop do
  break if prime?(int)
  int += 1
 end
int
end

def minimum_number(array)
  num = array.sum
  next_biggest_prime = next_prime(num)
  next_biggest_prime - num
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
