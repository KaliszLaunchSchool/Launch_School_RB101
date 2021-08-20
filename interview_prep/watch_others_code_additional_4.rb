
=begin
# Problem 4: Capitalize words
# Write a method that takes a single String argument and returns a new string that contains the original value of 
the argument with the first character of every word capitalized and all other letters lowercase. You may assume 
that words are any sequence of non-blank characters.

# Problem
- Create a method which accepts a single string
- Returns a new string with the original value with the first letter of every word capitalized
- Assume words are a sequence of non-blank chars
- If the first character in a 'word' is a special char, just 'capitalize' the whole thing

Input: str
Output: str
Intermed: Array

# Algo
- Create a method which takes 1 string
- Split the string into words
- Iterate through the array of words, capitalize each word
- Join the array back into a string
=end

def word_cap(string)
  caps = string.split.map {|word| word.capitalize}
  p caps.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
