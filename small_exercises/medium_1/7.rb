=begin
Word to Digit
Write a method that takes a sentence string as input, and returns the same string with any sequence of the 
words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of 
digits.

Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') == 
  'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Problem
- Create a method which takes a sentence string as input
- Returns the same string with any numbers converted to digits

Input: String
Output: String

# Data
String
Array

# Algo
- Initiate a constant hash with integer words matched with their respective digit
- Create a method which takes one parameter(string)
- Split the string into an array of words
- Clean the words so they don't have punctuation
- Iterate through the arry
  - If the constant hash includes a key of the word being iterated, convert the word into the value of the hash
  - Change in place
- Join the array back into a sentence string

=end

DIGIT_WORDS = {'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5', 'six': '6', 'seven': '7', 
              'eight': '8', 'nine': '9'}

def word_to_digit(sentence)
  sentence = sentence.split(/( )|(\.)/).map do |word|
    if DIGIT_WORDS.has_key?(word.to_sym)
      DIGIT_WORDS[word.to_sym]
    else
      word
    end
  end
  sentence.join
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'