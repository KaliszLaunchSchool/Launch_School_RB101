=begin
Lettercase Percentage Ratio

In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase 
characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the 
percentage of characters in the string that are lowercase letters, one the percentage of characters that are 
uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Problem
- Create a method which takes a string of characters
- Count the number of lowercase letters, uppercase letters, aand neither
- Convert the number of each to the percentage of characters thatt are lowercase, uppercase, or neither
- return a hash with the percentages

Input: String
Output: Hash

# Data
- String
- Hash
- Aarray?
- Float

# Algo
- Initiate a constant array of uppercase letters
- Initiate a constant array of lowercase letters 
- Initiate a result hash, with lowercase, uppercaise, neither, each beginning with a value of 0.0
- Initiate a method which takes a string
  - Split the string into characters (array of chars)
  - Iterate through the array
    - If lowercase aphabet include charater, increase the value of the lowercase hash key by 1
    - If uppercase aphabet include charater, increase the value of the uppercase hash key by 1
    - Else, increase the value of the neither hash key by 1
- Now, we have a hash with the number of each character type
- Find out how many characters we have (size of the array of characters)
- Iterate through the hash, transforming the values 
  - Divide the hash value by the size of the array and multiply by 100

# Code
=end

LOWERCASE_ALPHABET = ('a'..'z').to_a
UPPERCASE_ALPHABET = ('A'..'Z').to_a

def character_count(characters, result)
  characters.each do |letter|
    if LOWERCASE_ALPHABET.include?(letter)
      result[:lowercase] += 1
    elsif UPPERCASE_ALPHABET.include?(letter)
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

def letter_percentages(string)
  result = {lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  character_count(string.chars, result)
  total_chars = string.chars.count
  result.each {|key, value| result[key] = (value/total_chars) * 100 }
  result
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
