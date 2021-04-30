=begin
Practice Problem 12

Given the following data structure, and without using the Array#to_h method, write some code that will return a hash 
where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# Problem
- Given a nested structure
- Return a hash where the key is the first item in each sub array
- Value is the 2nd item in each sub array
- to_h may not be used

Input: Nested array
Output: Nested hash

# Example
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
  ==> {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# Data
Arrays
Hashes
Strings
Integers

# Algo

=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}

arr.each do |element|
  p hash = element[0]=> element[1]
end

=begin
LS Solution

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

hsh # => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

Although this task may at first seem complicated because the collection contains different object types, sometimes 
nested three levels deep, you only really have to work at the initial sub-level in order to reach a solution. Remember 
that any Ruby object can be a hash key and any Ruby object can be a hash value.
=end
