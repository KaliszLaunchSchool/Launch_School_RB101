=begin
Group Anagrams
Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact 
letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

# Problem
- Given an array of words, print out groups of words that are anagrams
- Anagrams = words that have the same letters in a different order

Example:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon'] 
          ==
          ["demo", "dome", "mode"]
          ["neon", "none"]

# Data
- Array 
- String

# Algo
1. Determine if 2 words are anagrams
  - Split the words into an array of characters
  - Sort
  - if array 1 == array 2, the words are anagrams

2. Iterate through a given array
  - Determine if words are anagrams for one another
  - If anagram, group into an array
  - Else, make its own array

# Code
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon'] 

def anagram?(word_1, word_2)
  word_1.chars.sort == word_2.chars.sort
end

def sort_anagrams(words)
  count = 0 
  grouped_anagrams = []
  loop do
    anagrams = []
    words.each do |word|
      if anagram?(words[count], word)
        anagrams << word
      end
    end
    grouped_anagrams << anagrams unless grouped_anagrams.include?(anagrams)
    count += 1
    break if count == words.size
  end
  grouped_anagrams
end

p sort_anagrams(words)
