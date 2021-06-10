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
LS Solution

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

Discussion
This is mildly tricky, but not terribly so. The main difficulty here is understanding the difference between 
the index number and the character number. Take the string in the first test for example: "I love ruby". The 
third character is "l", however, the third index is "o". This is because, when counting characters, you start 
at 1, but when counting indexes, you start at 0.

The first step is to determine the index of the centermost character in the string. This is easy for odd-length 
strings: the center point of a 5 character string, for instance, is the 3rd character, or index 2. For 
even-length strings, things are slightly more complicated: we need the index of two characters, the character 
to the left of the centerpoint, and the character to the right. For a 4 character string, these are the 2nd and 
3rd characters, or indexes 1 and 2.

In both cases, we can divide the string length by 2 to get either the index we want (5 / 2 == 2 for our 5 
character string), or the index of the character just to the right of center (4 /2 == 2 for our 4 character 
string). All that remains after determining these values is to extract the appropriate character(s) from the 
string. For odd-lengthed strings, we just get the middlemost character, and for even-lengthed strings, we get 
the character at the indicated index, and the character just prior to it; we use the substring-ing form of the 
String#[] method to extract 2 characters at center_index - 1.
=end
