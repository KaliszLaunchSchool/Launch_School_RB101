=begin
Write a method that takes one argument, a string containing one or more words, and returns the given string 
with words that contain five or more characters reversed. Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# Problem
- Create a method which takes 1 argument (string)
  - contains 1 or more words
- Returns the same string
  - words that contain 5 or more characters are reversed
  - words that contain less than 5 characters are the same
Rules: strings contain only letters and spaces. Spaces should be included when more than 1 word is present

Input: string
Output: same string

# Algo
- Create a method which accepts a string
- Split the string into words
- Iterate through the words
  - If the words contain 5 or more characters, reverse the word
- Return the string with the selected words reversed
=end

def reverse_words(sentence)
  sentence.split.map do |word|
    if word.size > 4
      word.reverse!
    else
      word
    end
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS