=begin
Letter Swap
Given a string of words separated by spaces, write a method that takes this string of words and returns a 
string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least 
one word. You may also assume that each string contains nothing but words and spaces

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Problem
- Given a string of words anad spaces
- Return a string with the first and last letter sawpped on every word
- Keep case as is

Input: String
Output: string

# Algo
- Create a method which accepts 1  parameter (string)
- Split the string into 'words' 
  - Words are separated by spaces, so split at every space
- Iterate through the string
  - Switch the first and last letter of each word
  - Either swap in place, or push to a new array or string
=end

def swap(sentence)
  swapped_sentence = []
  sentence.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
    swapped_sentence << word
  end
  swapped_sentence.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
 