=begin
Get The Middle Character
Write a method that takes a non-empty string argument, and returns the middle character or characters of the 
argument. If the argument has an odd length, you should return exactly one character. If the argument has an 
even length, you should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

# Problem
- Create a method which takes a non-empty string
- Returns the middle character(s)
- If odd, return 1 char
- If even, return 2 

Input: String
Output: String

# Examples
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

# Data
String
Integer

# Algo
- Create a method which takes 1 parameter(string)
- Get the size of the string
- Index = size of string/2
- If size is odd
  - Return string[index + 1]
- If size is even
  - Return string[index] + string[index + 1]

# Code
=end

def center_of(string)
  size = string.size
  index = size / 2
  if size.odd?
    p string[index]
  elsif
    p string[index - 1] + string[index]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

=begin
=end
