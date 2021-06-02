=begin
Right Triangles
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides 
each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end 
at the lower-left of the triangle, and the other end at the upper-right.

Examples:

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

# Problem
- Write a method which accepts 1 parameter (an integer n)
- Displays a R triangle whose sides all have n stars

Input: Integer
Output: String

# Examples
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

# Data
Integer 
String
Array?

# Algo
- Create a method which accepts 1 parameter (n)
- Initiate a loop
- Print * n times
- Decrement n
- For n - new n, print that number of spaces before the *'s'
- Break if n == 0
# Code
=end

def triangle(n)
  start = 0 
  loop do
    lines = ''
    start += 1 
    start.times do |_| 
      lines << '*'
    end
    while lines.size < n
      lines = " " + lines
    end
    break if start > n
    p lines
  end
end

triangle(5)
triangle(9)
