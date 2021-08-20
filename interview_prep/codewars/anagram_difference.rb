=begin
30. Anagram difference
(https://www.codewars.com/kata/5b1b27c8f60e99a467000041)

Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10

c o d e w a r s  ----> c e a r 
  8 chars - 4 = 4
h a c k e r r a n k -> c e a r 
  10 chars - 4 - 6
6+4 = 10

Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.

# Problem
- given 2 strings, calculate how many letters you need to remove in order to make them agagrams (same letters)

Input: 2 strings
Output: Integer

# Algo
- Create a method which takes 2 strings
- Initiate a common_chars array
- Take the longer string and split it into characters as a comparison array
- Take the shorter string and split it into characters
  - Iterate through and check to see if the comparison array contains that letter
    - if it does
      - add that to the common chars array
      - delete the letter from the comparison array (find the index, delete at that index)
  - Count the number of chars in the common_chars
  - Result = string1.size - common_chars.size + string2.size - common_chars.size
=end

def anagram_difference(string1, string2)
  common_chars = []
  if string1.size > string2.size
    comparison_array = string1.chars
    shortie = string2.chars
  else
    comparison_array = string2.chars
    shortie = string1.chars
  end
  shortie.each do |char|
    if comparison_array.include?(char)
      common_chars << char
      index = comparison_array.index(char)
      comparison_array.delete_at(index)
    end
  end
  (string1.size - common_chars.size) + (string2.size - common_chars.size)
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
