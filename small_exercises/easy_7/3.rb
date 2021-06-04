=begin
Capitalize Words
Write a method that takes a single String argument and returns a new string that contains the original value 
of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Problem
- Create a method which takes a string
- Capitalize all the words in a given string
- Retuen a new string

Input: String
Output: New string

# Examples
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Data 
String
array

# Algo
- Create a method which takes 1 string
- split the string into words
- Capitalize each word and push to a new array
- join the new array

# Code
=end

def word_cap(sentence)
  capitalized_sentence = []
  sentence.split(" ").each do |word|
    capitalized_sentence << word.capitalize
  end
  capitalized_sentence.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
