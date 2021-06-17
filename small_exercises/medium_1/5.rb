=begin
Diamonds!
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied 
as an argument to the method. You may assume that the argument will always be an odd integer.

Examples

diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

# Problem
- Create a method which takes an odd integer(n)
- Returns a 4 pointed diamond in an x-grid
- Widest point of diamond is (n) stars long
- starts at 1 star, increments odd until widest, when increments odd back to 1

Input: integer
Output: string

# Examples

diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

# Data
Integer
String

# Algo
- Create a method which accepts 1 integer
  - An odd integer(n)
- Print lines of *, 
  - All will be odd
  - From 1 up to n, then n downto 1
  - Each line should be centered
# Code
=end

def diamond(n)
  1.upto(n) do |num|
    if num.odd?
      line = ""
      num.times {|_| line << '*'}
      p line.center(n)
    end
  end
  num = n.dup
  loop do
    num -= 1
    if num.odd?
      line = ""
      num.times {|_| line << '*'}
      p line.center(n)
    end
    break if num < 1
  end
end

diamond(1)
diamond(3)
diamond(9)