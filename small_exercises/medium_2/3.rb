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

=begin
LS Solution

def letter_percentages(string)
  counts = {}
  percentages = {}
  characters = string.chars
  length = string.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end
Discussion
Looking at this, we can see that there is quite a bit going on. Let's break it up into pieces. This should help 
with understanding the overall problem and solution.

First, we set up the initial part of the data we want to create. This method is expected to return a hash of 
character ratios, hence the hash called percentages. There's also a counts hash to store the number of 
characters for lowercase, uppercase, and neither groups. Storing this information will act as an intermediary 
step towards calculating our percent character ratios later on.

We use the method, Array#count to find the number of occurrences of each type of character. Then, we pass our 
stored counts and percentages hashes to the calculate method to compute the ratios asked for by this problem.

Remember, hashes are a bit complex. If you pass a hash into a method, and then alter a value in that hash, that 
altered value will then continue to persist even outside that method.

Further Exploration
If we passed a string 'abcdefGHI' as an argument to our method call the solution would be 
{:lowercase=>66.66666666666666, :uppercase=>33.33333333333333, :neither=>0.0}. It would be nicer if we could 
round these float numbers so that our solution looks like this 
{:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}. Try creating that solution on your own.
=end
