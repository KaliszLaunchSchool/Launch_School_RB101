=begin
Given a string that contains the written versions of the numbers 0-9, return the same string that has converted each writtten number 
within the string to an integer.

a = 'One Two Three' convert_word_to_number(a) == '1 2 3' a == '1 2 3'

b = 'one Two three' convert_word_to_number(b) == '1 2 3' b == '1 2 3'

# Problem
- Given a string that contains written versions of 0-9
- return the same string with a integers instead of the written number
- other words in the string stay the same
- only convert if it is the whole word

**Convert case!!

Input: string
Output: manipulated string
Intermed: array

# Examples
a = 'One Two Three' convert_word_to_number(a) == '1 2 3' a == '1 2 3'
One ==> 1 
Two ==> 2
Three

b = 'one Two three' convert_word_to_number(b) == '1 2 3' b == '1 2 3'

# Algo
- Create a words constant
- Create an integers constant
- merge into a conversion hash

- Given a string
- Create an array of words (letters separated by spaces)
- Iterate through the words
  - downcase each for comparison (dont manipulate)
  - if the hash contains the downcased word, convert it to the integer
- join the new hash
=end

words = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
integers = (0..9).to_a

HASH = words.zip(integers).to_h

def convert_word_to_number(string)
  converted = string.split.map do |word|
    if HASH.include?(word.downcase)
      word = HASH[word.downcase]
    else
      word
    end
  end
  converted.join(' ')
end

convert_word_to_number('One Two Three and some words') == '1 2 3 and some words' 
convert_word_to_number('Nine eight seven and some words') == '9 8 7 and some words'
convert_word_to_number('one word') == '1 word' 
convert_word_to_number('lone word') == 'lone word'