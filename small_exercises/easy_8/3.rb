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

=begin
LS Solution

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

Discussion
This problem is straightforward; all we need to do is to iterate through the characters of a string, returning 
each substring that starts at the beginning of the string, and ends with the character we are currently 
iterating.

The hardest part of this problem is determining the correct looping structure to use; we decided to use upto, 
but any looping structure that works would be fine.

The expression string[0..index] may need a bit of explanation; it simply returns a substring of string. The 
substring starts at position 0, and ends at position index.
=end
