=begin
Rotation (Part 1)
Write a method that rotates an array by moving the first element to the end of the array. The original array 
should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# Problem
Write a method that rotates an array
 ie. moves the first element to the end of the array
- Original array should not be modified

Input: Array
Output: New array

# Examples
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# Data
- Array
- Integer
- Strings

# Algo
- Create a method which takes 1 parameter
  - Parameter will be an array
- Initiate a results array
- Iterate through the array starting at index 1
- Add each element to the new array
- Break at the end of the array
- After, take element at index 0 and add it to the end of the array
- Return the new array
=end

def rotate_array(original_array)
  results_array = []
  count = 1
  if original_array.size >= 2 
    loop do 
      results_array << original_array[count]
      count += 1
      break if original_array.size == count
    end
  end
  results_array << original_array[0]
  results_array
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

=begin
LS Solution

def rotate_array(array)
  array[1..-1] + [array[0]]
end

Discussion
There are multiple ways to solve this, but we show just one.

Our solution simply slices everything out of the array except the first element, then appends the original 
first element to the end. Note that we must be careful to not mutate array.

Further Exploration
Write a method that rotates a string instead of an array. Do the same thing for integers. You may use 
rotate_array from inside your new method.
=end
