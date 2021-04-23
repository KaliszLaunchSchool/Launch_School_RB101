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

=begin
LS Solution

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

Discussion
There are many ways to shorten the logic of the method. For example, we could use a ternary operator instead 
of the if/else/end construct. Further, we could use string interpolation rather than concatenation. But those 
are minor improvements and are not necessary. Clarity is more important than density.

There are also other algorithms to use other than the if/else logic. For example, we could put string1 and 
string2 in an array, and then sort the array according to the element's length. Then just concatenate the 
elements in the array, knowing that the shortest one is first.

Example:

Copy Code
def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end
This method is perhaps too clever for its own good and makes it hard to understand what this method is trying 
to do. Though a little longer, the if/else/end solution from earlier is much clearer.
=end
