=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

# Problem
- Given a string, find the highest scoring string
- Score depends on position of the alphabet
Rules: all letters lowercase, all inputs are valid

Input: string of words
Output: a single word (string)

# Data
- strings
- array

# Algo
- Initiate a constant array of the lowercase alphabet
- Iterate through the provided string
  - calculate a score for each word based on its letters
    - Initiate a word score variable 
    - iterate through each word
    - the index of the letter based on the alphabet constant is its score
  - Compare scores of each word
  - Return the string which has the largest score 
=end

ALPHABET = ('a'..'z').to_a

def high(words)
  highest_word_and_score = [0, '']

  words.split(' ').each do |word|
    word_score_to_add = []
    word.chars.each do |letter|
      word_score_to_add << ALPHABET.index(letter) + 1
    end
     word_score = word_score_to_add.sum
     if word_score > highest_word_and_score[0]
      highest_word_and_score = [word_score, word]
     end
  end
  highest_word = highest_word_and_score[1]
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'
p high('b aa') == 'b'
p high('bb d') == 'bb'
p high('d bb') == 'd'
p high('aaa b') == 'aaa'