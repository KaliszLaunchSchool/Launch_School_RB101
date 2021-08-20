=begin
Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two 
different items in the array that, when added together, give the target value. The indices of these items should 
then be returned in a tuple like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be 
numbers; target will always be the sum of two different items from that array).

Based on: http://oj.leetcode.com/problems/two-sum/

twoSum [1, 2, 3] 4 === (0, 2)

# Problem
- Create a method which accepts an array of integers, and a "target"
- Find 2 numbers that, when added together, give the targer
- Return the indeces of theose 2 numbers

Rules: Inputs will be valid, any valid solutions are accpetable
  - All array items will be number
  - Target will always be viable

  Input: array, integer
  Output: Array

# Examples
twoSum [1, 2, 3] 4 === (0, 2)
  - target: 4, 1+3 = 4 --> 0,2

# Algo
- Create a method which accepts 2 parameters (array, "target" integer)
- Iterate through the array, summing each number with one of the other numbers in the array in turn
- If the result of the sum == the target number, retturn those 2 numbers which summed hit the targer
- Find the index of those arrays in the OG array
- Return the indexes
=end
=begin
def two_sum(array, target)
  subs = find_subarrays(array)
  twos = subs.select {|sub| sub.size == 2 && sub.sum == target}
  find_index = twos.first
  p find_index.map {|num| array.index(num) }
end

def find_subarrays(array)
  results = []
  1.upto(array.size) do |length|
    array.permutation(length) {|subarray| results << subarray}
  end
  results 
end
=end

def two_sum(array, target)
  array.each_with_index do |num1, idx1|
    array.each_with_index do |num2, idx2|
      return [idx1, idx2] if (num1 + num2) == target && idx1 != idx2
    end
  end
end

p two_sum([1, 2, 3], 4).sort == [0, 2]
p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]
p two_sum([2, 2, 3], 4).sort == [0, 1]