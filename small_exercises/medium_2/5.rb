=begin
Triangle Sides
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the 
longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, 
the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol 
:equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, 
scalene, or invalid.

Examples:

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

# Problem
-  Write a method which takes 3 parameters (integers)
  - Each interger represents a side of a triangle
- Validate the triangle 
  - sum of the lengths of the 2 shorter sides are greater than the length of the longest
  - All sides have lengths greater than 0
- Classify the triangle
  - Equilateral: All sides are = length
  - Isosceles: 2 sides equal, 3rd different
  - Scalene: all 3 sides different
  - Invalid: Not a valid triangle

Input: integer
Output: Hash key

# Data 
- Integer
- Hash

# Algo
- Create a method which takes 3 parameters (integers)
- Initiate an array to store the 3 integers
- Initiate a hash with keys :equilateral, :isosceles, :scalene, :invalid
- Validate a triangle
  - Sort the 3 integers
  - Check to make sure all lengths > 0
    - If any side <= 0, return :invalid
  - Add the first 2 (shorter) integers, compare to the last side
    - If the sum is greater than the length, continue
    - Else, return :invalid
- Classify the triangle
  - If side 1 != side 2 != side 3
    - :scalene
  - If side 1 = side 2 = side 3
    - :equilateral
  - Else
    - :isosceles

# Code
=end

def validate_triangle(sides)
  if sides.any? { |side| side.zero? } 
    true
  else
    sides.sort!
    sum_shorter_sides = sides[0] + sides[1]
    sides[2] > sum_shorter_sides
  end
end

def triangle(side_1, side_2, side_3)
  sides = [side_1, side_2, side_3]
  if validate_triangle(sides)
    return :invalid
  else
    if side_1 == side_2 && side_2 == side_3 
      :equilateral
    elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3 
      :scalene
    else 
      :isosceles
    end
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid