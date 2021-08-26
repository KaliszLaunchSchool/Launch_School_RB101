=begin 
Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. 
If there isn't one, return 0 instead.


p min_sub_length([2,3,1,2,4,3], 7) == 2
p min_sub_length([1, 10, 5, 2, 7], 9) == 1
p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p min_sub_length([1, 2, 4], 8) == 0

















=begin
Chris's solution


=begin
-----------------------INSTRUCTIONS--------------------------------------
# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -find the shortest consecutive sub-array where the sum is >= 's'
  -return 0 if there isn't one
  -array integers are positive
Implicit Rules:
  -'s' will always be a positive whole number
  -given array will not be empty
Questions:
  -contiguous? 
  
--------------------------EXAMPLES---------------------------------------
([2,3,1,2,4,3], 7) == 2

[2, 3, 1, 2] >= 7
[3, 1, 2, 4] >= 7
...
[4, 3] >= 7

return length of shortest array meeting the condition

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Array, 1 Integer
Output: 1 Integer
Additional DS Utilized:
  -creating sub-arrays from the given array

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* find all sub-arrays thats sum is >= 's' and push to them to an array
* find the shortest sub-array and return its length, or 0

-- method --> min_sub_length(array, integer) --> integer
  -initialize subs to the return value of find_sub_arr
  -select all sub-arrays thats sum is >= 's'
  -find the sub-array with the shortest length
  -return the shortest length or 0
  
-- method --> find_sub_arr(array) --> array
  -initialize an empty array (subs)
  -iterate through nums 1 upto length of given array (length)
    -iterate through given array and push all sub-arrays to subs
  -return subs

=end

def find_subs(arr)
  subs = []
  1.upto(arr.size) do |length|
    arr.each_cons(length) { |sub_arr| subs << sub_arr }
  end
  subs
end

def min_sub_length(arr, s)
  subs = find_subs(arr)
  subs_of_s = subs.select { |sub_arr| sub_arr.sum >= s }

  return 0 if subs_of_s.empty?
  subs_of_s.min_by { |sub_arr| sub_arr.size }.size
end

# p find_subs([2,3,1,2,4,3])

p min_sub_length([2,3,1,2,4,3], 7) == 2
p min_sub_length([1, 10, 5, 2, 7], 9) == 1
p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p min_sub_length([1, 2, 4], 8) == 0

=end