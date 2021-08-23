=begin
47. Array.diff
(https://www.codewars.com/kata/523f5d21c841566fde000009/train/ruby)

Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

It should remove all values from list a, which are present in list b.

array_diff([1,2],[1]) == [2]
If a value is present in b, all of its occurrences must be removed from the other:

array_diff([1,2],[1]) == [2]

# Problem
- Create a method which subtracts all values from list a which are present in list b
- If the item is listed multiple times, delete both instances
- If list a is empty, return an empty array

Algo
  - Create a method which accepts 2 parameters (arrays)
  - Subtract array a from array b and return the resutlting array
=end

def array_diff(arr_1, arr_2)
  arr_1 - arr_2 
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
