=begin
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

# Problem
- Create a method which takes a string
- Find the longest substring of that string that is in alphabetical order
  - Lowercase letters only
- If only 1 letter, return that letter
- If multiple substrings, just return the first one

Input: string
Output: string

# Algo
- Initiate a lowercase alphabet array 
- Create a method which accepts a string
  - Initiate a results array
  - Split the string into characters
  - add the fist character to the results array, and store its index in the alphabet array, this is its number
  - if the number of the next character is higher, add that to the results 
    - if the array ends, return results
  - If the number of the next character is lower, do not add, break out of the iteration
    - Return results
  - Join results backinto a string
=end

LOWERCASE_ALPHA = ('a'..'z').to_a

def longest(string)
  subsring = create_alphabetical_substring(string)
end

def create_alphabetical_substring(string)
  results = []
  num = 0
  string.chars.each do |letter|
    compare_num = LOWERCASE_ALPHA.index(letter)
    if compare_num < num
      break
    end
    results << letter
    num = compare_num
  end
  results.join('')
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

# Riaz's solution
def longest(str)
  str.chars.slice_when { |a, b| a > b }.max_by(&:size).join
end
 
# or

def longest(str)
  reg = ("a".."z").to_a.join('*') + '*'
  str.scan(/#{reg}/).max_by(&:size)
end