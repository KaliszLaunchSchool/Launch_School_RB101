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
- Create a method which accepts 2 parameters
- Determines the size of each string
- Concatinates shorter + longer + shorter
- Returns the result of the concatination

Rules: Assume the strings are different lengths

Input: 2 strings
Output: concatinated string

# Algo
- Create a method which accepts 2 strings
- Determine the size of each string
  - determine shorter vs longer
- Concatinate the strings using shorter + longer + shorter
=end

def short_long_short(string_1, string_2)
  if string_1.size > string_2.size
    longer, shorter = string_1, string_2
  else
    longer, shorter = string_2, string_1
  end
  shorter + longer + shorter
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
