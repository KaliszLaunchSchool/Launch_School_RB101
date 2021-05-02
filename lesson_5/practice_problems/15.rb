=begin
Given this data structure write some code to return an array which contains only the hashes where all the 
integers are even.

# Problem
- given a nested data structure
- retturn an array 
  - Array should contain only the hashes with all even integers

Input: Array
Output: Array

# Examples
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
==> [{b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# Data
Array
Hash
Integer

# Algo
- Initiate an empty array
- Iterate through the array
  - Keep hash if hash values are all even
=end
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.each do |hash|
  hash.keep_if do |_,values|
    values.all? {|number| number.even?}
  end
end

p arr
