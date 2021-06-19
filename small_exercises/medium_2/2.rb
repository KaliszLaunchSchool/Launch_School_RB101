=begin
Now I Know My ABCs

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any 
given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, 
false otherwise.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# Problem
- A 'block' is 2 letters
- Create a method which checks to see if a word is spelled with only one letter from each block
- If the word contains both letters from any block, return false
- Blocks are uppercase letters

# Data
- String
- Array
- Boolean

# Algo
- Create a constant for alphabet blocks(nested array)
- Create a method which accepts 1 parameter (string)
- Upcase the string, then split it into letters
- Iterate through the blocked alphabet
  - If the array of letters contains each of the letters in a block, return false
  - else return true

# Code
=end

BLOCKED_ALPHABET = [
                    ['B','O'], ['X','K'], ['D','Q'], ['C','P' ], ['N','A'], ['G','T'], ['R','E'], 
                    ['F','S'], ['J','W'], ['H','U'], ['V','I'], ['L','Y'], ['Z','M']
                    ]
                  
def block_word?(string)
  letters = string.upcase.split(//)
  offending_letters = []
  
  BLOCKED_ALPHABET.each do |letter_blocks|
    if letters.include?(letter_blocks[0]) && letters.include?(letter_blocks[1])
      offending_letters << letter_blocks
    end
  end

  if offending_letters.empty?
    return true
  else
    return false
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true