=begin
Your goal is to write the group_and_count method, which should receive an array as unique parameter and return a hash. 
Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, 
and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}
The following methods were disabled:

Array#count
Array#length

# Problem
- Create a method which accepts an array of integers
- Count the number of times each individual integer is present in the aarray
- return a hash with the individual integer as the key, and the number of times it appears as the value

Input: Array if integers
Output: Hash

group_and_count([0,1,1,0]) == {0=>2, 1=>2}

# Algorithm
- Create method which accepts 1 parameter (an array of integers)
- Initiate a results hash
- Check to see if the array is empty or if the input value is false 
  - if so, return nil
- Iterate throough the array
  - Check to see if my results hash includes the number
    - If it does not, add the number to the hash with a value of 1
    - If does include the number as a key, increase the value of that key by 1
=end

def group_and_count(array)
  if array == nil || array.empty?
    return nil
  else
    results = {}
    array.each do |num|
      if results.include?(num)
        results[num] += 1
      else
        results[num] = 1
      end
    end
    results
  end
end

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}
p group_and_count(["a", "b", "b"]) == {"a"=>1, "b"=>2}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count(["a", "a", "a", "a", "a", "q", "q", "q", "q", "q", "q", "q"]) == {"a"=>5, "q"=>7}
p group_and_count([1, 2, 3, 4, 1, 2, 3, 4]) == {1=>2, 2=>2, 3=>2, 4=>2}