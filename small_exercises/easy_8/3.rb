=begin
Leading Substrings
Write a method that returns a list of all substrings of a string that start at the beginning of the original 
string. The return value should be arranged in order from shortest to longest substring.

Examples:

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Problem
- Create a method which takes 1 parameter
- Returns a list of all substrings which begin at the beginning of the original string
- Order the return from shortest to longest substring

Input: String
Output: Array of strings

# Examples
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Data
- String
- Array

# Algo
- Create a method which takes 1 parameter (string)
- Initiate a result array
- Initiate a string 
- split the string into characters
- Iterate through the charaters
  - Add fist charcter to the result array and to the new string
  - For each subsequent character, add the character to the new string and then add that to the result

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

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
