=begin
You are given an array (which will have a length of at least 3, but could be very large) 
containing integers. The array is either entirely comprised of odd integers or entirely comprised 
of even integers except for a single integer N. Write a method that takes the array as an argument 
and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

# Problem: Given an array with a length of at least 3, containing integers
All integers will be even OR all integers will be odd EXCEPT one
Return that outlier

# Example
[2, 4, 0, 100, 4, 11, 2602, 36] --> 11

# Data: array, integers

# Algorithm
- Create a method which accepts 1 parameter (array)
- Check the first 3 elements of the array and determine the majority
  - Majority = 2 elements are even or 2 elements are odd
- Iterate through the array, checking for the outtlier
- Return the outlier
=end

def find_outlier(array)
  majority = ''
  if array[0].even? && array[1].even? 
    majority = 'even'
  elsif array[0].even? && array[2].even? 
    majority = 'even'
  elsif array[1].even? && array[2].even? 
    majority = 'even'
  else 
    majority = 'odd'
  end
  outlier = []
  array.each do |num|
    if majority == 'even'
      outlier << num
      break if num.odd?
    else
      outlier << num
      break if num.even?
    end
  end
  outlier.last
end

find_outlier([0, 1, 2]) #, 1)
find_outlier([1, 2, 3]) #, 2)
find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) # 11