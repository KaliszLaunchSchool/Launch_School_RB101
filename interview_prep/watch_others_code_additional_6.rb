#Problem 6: Sum same consecutive integers
=begin
You are given an array that contains only integers (positive and negative). Your job is to sum only the numbers 
that are the same and consecutive. The result should be one array.

You can assume there is never an empty array and there will always be an integer.

# Problem
- Given an array of positive and negative integers
  - Sum the numbers that are the same AND consecutive
- Return a single result array
- Assumptions: Array will never be empty, there will always be an integer
- Question: is -2 = 2? do those count as the same?

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]

Input: array
Output: array

# Algo
- Create a method which takes 1 array
- Create a method for subarrays:
  - Iterate through the array, and create a subarray of each element 
  - if the next character in line is the same, add it to the subarray prior
  - otherwise, make it its own subarray
- Iterate through the subarrays, and sum each of them in turn
- Return the results to a "results" array
=end

def sum_consecutives(array)
  subarrays = find_consec_subarrays(array)
  sums = subarrays.map {|subarray| subarray.sum}
end

def find_consec_subarrays(array)
  subarrays = []
  array.each_with_index do |num, index|
    if subarrays.empty?
      subarrays << [num]
    else 
      if subarrays[-1].include?(num)
        subarrays[-1] << num
      else
        subarrays << [num]
      end
    end
  end
  subarrays
end


p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
