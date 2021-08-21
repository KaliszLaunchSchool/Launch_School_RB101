=begin
33. Replace With Alphabet Position
(https://www.codewars.com/kata/546f922b54af40e1e90001da)

In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

# Problem
- Given a string, replace the letter with it's position in the alphabet (1-26)
- If something is not a letter, ignore it
- Case insensitive
- Return string should have spaces between each number

Input: string
Output: string

# Algo
- Initialize a 'lowercase_alpha' constant
- Initialize a method which accepts 1 string
- Initialize a result array
- Split the string into characters and iterate through the string
  - if the alphabet constant includes the char
    - downcase each letter, find its index in the alpha constant
    - add the index + 1 to tthe result array
- Join the result array into a string with spaces betweeen each num
=end

ALPHA = ('a'..'z').to_a

def alphabet_position(string)
  results = []
  string.chars.each do |char|
    char =  char.downcase
    if ALPHA.include?(char)
      results << ALPHA.index(char) + 1 
    end
  end
  results.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
