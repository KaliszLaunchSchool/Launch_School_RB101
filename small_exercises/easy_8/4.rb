=begin
All Substrings
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where 
in the string the substring begins. This means that all substrings that start at position 0 should come first, 
then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, 
the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# Problem
- Write a method which takes 1 parameter (string)
- Returns a list of all substrings in the string
- strings should be ordered from shortest to longest
- all substrings starting from the same index should be grouped

Input: string
Output: array of strings

# Examples
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# Data
Strings
Arrays

# Algo
- Use leading substring app to break the string into substrings
- substrings which start with the same substring should be grouped
- Each group ordered from shortest to longest

# Code
=end

def leading_substrings(string)
  results = []
  new_string = ''
  string.chars.each do |character|
    new_string = new_string + character
    results << new_string
  end
  results
end

def substrings(string)
  results = []
  loop do 
    break if string.empty?
    results.concat(leading_substrings(string))
    string.delete!(string[0])
  end
  results
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]