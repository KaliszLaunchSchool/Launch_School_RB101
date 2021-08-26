=begin
Create a method that upcases the last instance of that character, only when character that occurs 2 or more times in the string.

# Problem
- Create a method which accepts a string
- When a character appears 2 or more times in the string, upcase the last instance of the character

# Examples
upcase_last_char('aaabbbccc') == 'aaAbbBccC'
a = 3 b = 3 c = 3
aaAbbBccC

upcase_last_char('hello there human') = 'helLo therE Human'
h = 2
e = 3
l = 2
o = 1
t = 1 
r = 1
u = 1
m = 1
a = 1 
n = 1
'helLo therE Human'

Input: String
Output: new string
Intermed: array

# Algo
- Create a method which accepts a string
- Create a 'unique letters' array
- Count how many times each unique letter appears in the string
- initialize a results array
- Create an array of characters representing the string
  - if the letter count >= 2 && the letter is the last instance of that letter(count in the results array is the expected count - 1)
    - Uppercase send it to the results array
  - Otherwise
    - send the letters to that array
=end

def upcase_last_char(string)
  unique_letters = string.chars.uniq
  counts = string.chars.tally
  results = []  
  string.chars.each do |char|
    if counts[char] >= 2 && results.count(char) == (counts[char] - 1)
      results << char.upcase
    else
      results << char
    end
  end
  results.join
end

p upcase_last_char('aaabbbccc') == 'aaAbbBccC'
p upcase_last_char('hello there human') == 'helLo therE Human'