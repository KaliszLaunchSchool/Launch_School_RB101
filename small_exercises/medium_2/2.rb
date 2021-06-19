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
].freeze 
                  
def block_word?(string)
  letters = string.upcase.split(//)
  offending_letters = []

  BLOCKED_ALPHABET.each do |letter_blocks|
    if letters.include?(letter_blocks[0]) && letters.include?(letter_blocks[1])
      offending_letters << letter_blocks[0]
      offending_letters << letter_blocks[1]
    elsif letters.tally.each do |_, value| 
      if value >= 2
        offending_letters << value
      end
    end
    end
  end

  if offending_letters.size >= 2
    return false
  else
    return true
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BABCH') == false

=begin
Solution

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

Discussion
The first thing we want to consider is how we should organize our blocks; we want to be able to check each 
block easily to make sure that a valid block word is passed to this method.

For this solution, we'll use an array of two letter strings. We'll use this array to check that the word passed 
in doesn't contain two letters from any block. We also want to make sure that no block is used more than once. 
If both those conditions are met, then we have a valid block word.

In the solution the String#count method is used. This allows us to count the number of occurrences of a 
collection of characters. The collection of characters will be each block we want to check. If we find a count 
of 2 or greater, then we know that either both block characters are contained within the string, or that a 
character from the current block occurs more than once in that string.

The final item of note is that we must convert the input string to uppercase, just in case it contains 
lowercase letters.

Further Exploration
Did you use a different data structure for organizing your blocks? Were those blocks 2 letter strings or 
something else? What method did you use to check if a string had 2 letters from a single block? There are 
several different possibilities for solving this exercise.
=end
