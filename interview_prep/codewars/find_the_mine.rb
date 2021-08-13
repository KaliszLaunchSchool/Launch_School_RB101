=begin
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D 
grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented 
as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array where the first element is the row index, and the second element is the column 
index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), 
and there will only be one mine in the array.

# Problem
- Create a method which takes an array of integers
- Returns its position in array form

Input: Array of integers
Output: Array of integers

# Algo
- Create a method which accepts a nested array of integers (0's and 1's)
- Find where the 1 is, and return its position as [outer_array_index, inner_array_index]
  - Iterate through the first array, check each array and check to see which one contains the 1
    - Save the index of that array
  - Iterate through the array that has the 1
    - Save the 1's index

  - Return [outer_array_index, inner_array_index]
=end

def mineLocation(positions)
  outer_array_index = 0
  inner_array_index = 0
  positions.each_with_index do |array, outer_index|
    if array.include?(1)
      outer_array_index = outer_index
      array.each_with_index do |num, inner_index|
        if num == 1
          inner_array_index = inner_index
        end        
      end
    end
  end
  [outer_array_index, inner_array_index]
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
