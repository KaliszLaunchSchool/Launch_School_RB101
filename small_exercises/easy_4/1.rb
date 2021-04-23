=begin
Short Long Short
Write a method that takes two strings as arguments, determines the longest of the two strings, and then 
returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

Examples:

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# Problem
- Method takes 2 arguments 
  - Arguments are strings of different lengths
- Determines longer of the 2 strings 
- Returns result of concatenating short + long + short

Input: 2 strings
Output: 1 string

# Examples
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# Data
Strings

# Algo
- Create a method which takes 2 strings
- Find the size of each string
- Assign each string to a variable based on length
- Concatinate strings short + long + short

# Code
=end
def short_long_short(string_1, string_2)
  if string_1.length > string_2.length
    short_string = string_2 
    long_string = string_1
  else
    short_string = string_1 
    long_string = string_2
  end
  short_string + long_string + short_string
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"