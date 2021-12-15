=begin
The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in 
an array or list of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]
Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of 
the whole array. If the list is made up of only negative numbers, return 0 instead.

Empty list is considered to have zero greatest sum. Note that the empty list or array is also a 
valid sublist/subarray.

# Problem
- Find the subarray which, when summeed, is the maximum sum possible from that subarray
  - If the entire list is positivee numbers only, max sum is the sum   of the entire array
  - Empty arrays have 0 greatest sum
  
Example
[] == 0
[-2, 1, -7, 4, -10, 2, 1, 5, 4] == 12

# Data: integers, arrays

# Algorithm
- Create a method which accepts 1 parameter
- Initiate an empty array subs
- Check if the array is empty
  - Return 0
- Iterate through the array
  - Create all consecutive subarrays from 0 to the lentgh of the        array
- Iterate through subarrays
  - Sum them
  - Return the maximum 
- If the max is less than 0, return 0
=end

def max_sequence(array)
  subs = []
  return 0 if array.empty?
  1.upto(array.length) do |size|
    array.each_cons(size) do |sub|
      subs << sub
    end
  end
  sums = subs.map do |sub|
    sub.sum
  end 
  if sums.max < 0 
    return 0
  else 
    sums.max
  end
end 

p max_sequence([]) == 0
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
