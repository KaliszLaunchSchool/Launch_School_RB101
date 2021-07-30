=begin
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

# Problem
- Given an array of integers, count all pairs in the array
- Return the count
- If empty, or one value, return 0
- Max array length is 1000

Input: array
Output: Integer

# Algo
- Create a method which accepts 1 parameter
- Initiate a count variable, initialize to 0
- Sort the array
- Loop through the array
  - If the element next to the element is the same, increase the count by 1 (this is pair)
    - Move into the element after the counted element
  - Else, check the next element
=end
def pairs(arr)
  pair_count = 0
  counter = 0
  arr = arr.sort
  loop do
    if arr.empty?
      return pair_count
    elsif arr[counter] == arr[counter + 1]
      pair_count += 1
      counter += 2
    else
      counter += 1
    end
    break if counter + 1 >= arr.size
  end
  pair_count
end

p pairs([1, 2, 5, 6, 5, 2])
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])
p pairs([0, 0, 0, 0, 0, 0, 0])
p pairs([1000, 1000])
p pairs([])
p pairs([54])