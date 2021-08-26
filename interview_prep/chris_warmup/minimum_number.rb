=begin
Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal 
the closest prime number .

Notes

List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples

# Problem
- Given an array of integers, find the minimum number that can be inserted into the list to make the 
  sum of all elements equal the closest prime number
- The list size >2; only positive numers; repetition of integers is possibe

# Examples
minimum_number([3,1,2]) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which 
will make the sum of the List* equal the closest prime number (7)* .
3 + 1 + 2 = 6
closest prime = 7
7-6 = 1, return 1

minimum_number([2,12,8,4,6]) ==> return (b, 5) Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which 
will make the sum of the List* equal the closest prime number (37)* .
2+12+8+4+6 = 32
closest prime = 37
37 - 32 = 5 

minimum_number ([50,39,49,6,17,28]) ==> return (2) Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which 
will make the sum of the List* equal the closest prime number (191)* .

# Algo 
- Create a helper method to check for prime numbers
  - From 2 to the number - 1 , check to see if num % divisor = 0
    - If any are true, the number is NOT prime
    - Otherwise, it is prime
  
- Create a method which accepts an aray of integers
- Initiate a 'increase_by' variable = 0
- Sum the array of integers 
  - Check to see if it is prime
  - if it is prime, return increase_by
  - otherwise, increment increase by by 1, increase the sum by 1 and check again
=end

def prime?(int)
  2.upto(int - 1) do |divisor|
    return false if int % divisor == 0
  end
  true
end

def minimum_number(array)
  increase_by = 0
  sum = array.sum
  return increase_by if prime?(sum)
  loop do
    increase_by += 1
    sum += 1
    return increase_by if prime?(sum)
  end
end


p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2