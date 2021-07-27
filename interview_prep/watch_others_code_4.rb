=begin
The maximum sum subarray problem consists of finding the maximum sum of 
a contiguous subsequence in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

The easy case is when the array is made up of only positive numbers and the 
maximum sum is the sum of the whole array. If the array is made up of 
negative numbers, return 0 instead. 

An empty array is considered to have zero greatest sum. Note that the empty 
array is also a valid subarray

Problem:
Given an array of integers, find the maximum sum of a continuous subarray of those integers
- If array can only be negative, return 0
- Empty array = 0 greatest sum, Empty array is considered valid

Input: array of positive and negative integers
Output: Integer (maximum sum of substrings)

Algo
- Create a method which takes 1 parameter (an array of integers)
- Sum the array, creating a "max_value"
- Create a new array from index 1 to the end of the array
- Compare max_value with working_value
  - If working_value > max_value, replace max_value with working value
- Remove 0th index again, and continue comparison, until empty array
- Do the same for the -1 index
- Then again for -1 AND 0th index
- Return max_value

New algo
- Create a method which takes 1 parameter (an array of integers)
- Sum the array, creating a "max_value"
- Create a 'subarray' from index 0..1, 0..2, 0..3, until 0..-1 then 1..-1 etc
- For each subarray, sum, and check if greater than "max_value"
- If so, replace "max_value"
- Continue to iterate through the array, checking for new max value

Question: if a single element is greater than the sum of any sequence, 
should that be the max value?
=end

def max_sequence(array)
  max_value = array.sum
  puts "The max value is #{max_value}"
  working_array = array.dup
  until working_array.empty?
    working_array.shift
    working_value = working_array.sum
    if working_value > max_value
      max_value = working_value
    end
  end
  puts "The max value is #{max_value}"
  max_value
end

#p max_sequence([]) #== 0
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
#p max_sequence([11]) #== 11
#p max_sequence([-32]) #== 0
#p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) #== 12
