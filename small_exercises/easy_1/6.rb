=begin
Write a method that takes one argument, a string containing one or more words, and returns the given string 
with words that contain five or more characters reversed. Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

## Problem ##
- Write a method, takes a string
  - If 5 or more characters, reverse the order of the letters
  - If less than 5 characters, string remains in the right order
  - Spaces remain
  - Words stay in the same order
- Returns string 

Input: String
Output: String

Capital letters remain

## Examples ##

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

## Data ##
String
Array?

## Algorithm ##
- Create method 
- Split each string (creates array)
- Iterate through array, check for 5 or more letters
- If 5 or more letters, reverse string
- Join array
- Return string

## Code ##
=end
def reverse_words(string)
  each_word = string.split
  reversed_each_word = each_word.map { |word|
    if word.size >= 5 then
      word.reverse
    else
      word
    end
  }
  reversed_each_word.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS