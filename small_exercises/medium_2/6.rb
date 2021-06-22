=begin
Tri-Angles
A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 
0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, 
or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also 
assume that the arguments are specified in degrees.

Examples:

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

# Problem
- Create a method which takes 3 parameters (integers)
- Validate the traingle 
  - Sum of the angles = 180 AND
  - Every angle > 0
- If triangle, classify the triangle
  - right One angle of the triangle is a right angle (90 degrees)
  - acute All 3 angles of the triangle are less than 90 degrees
  - obtuse One angle is greater than 90 degrees.

# Data
- Integer 
- Array

# Algo
- Create a method which takes 3 parameters (integers)
- Store in an array
- Validate the triangle
  - Check to make sure all integers > 0
  - Check to make sure the sum of all 3 integers = 180
- If valid, classify the triangle
  - If one angle == 90
    - :right
  - Else, if one angle > 90
    - :obtuse
  - Else if all 3 angles < 90
    - :acute

=end

def validate_triangle(sides)
  p sides
  if sides.any?(0)
    true
  else sides.sum != 180
  end
end

def triangle(side_1, side_2, side_3)
  sides = [side_1, side_2, side_3]
  if validate_triangle(sides)
    return :invalid
  else
    case
    when sides.any?(90)
      :right
    when sides.any? {|side| side > 90}
      :obtuse
    when sides.all? {|side| side < 90}
      :acute
    end
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid