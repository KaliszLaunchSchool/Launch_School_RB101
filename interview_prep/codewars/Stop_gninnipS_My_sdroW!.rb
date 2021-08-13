=begin
16. Write a method that takes a string of one or more words, and returns the same string, but with all five or more letter words reversed.

spinWords("Hey fellow warriors") => "Hey wollef sroirraw" 
spinWords("This is a test") => "This is a test" 
spinWords("This is another test") => "This is rehtona test"


# Problem
- Write a method which accepts a string of one or more words
- Return the same string, 
  - if a word is greater than 5 letters, reverse the word
  
Input: String
Output: Same string

# Algorithm
- Create a method which accepts 1 parameter (string)
- Split the string into an array of words 
  -  Iterate through that array, and determine if each individula word is greater than 5 characters
    - If it is, reverse in place
    - If not, just leave it
  - Return the string
=end

def spinWords(string_of_words)
  result = ''
  string_of_words.split.each do |word|
    if word.size > 5
      result << word.reverse! + ' ' 
    else
      result << word + ' '
    end
  end
  p result.chop
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw" 
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"