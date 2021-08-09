=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the 
position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

# Problem
- Create a method which accepts 1 parameter (array of words)
- For each word, based on it's position in the list, take that letter from the word
- Concatinate those letters to form a string
Rules: each word will have enough letters, test cases have valid input only

Input: Array of strings
Output: String

# Algo
- Create a method which accepts 1 parameter (aan array of words)
- Initiate an empty string
- Iterate through the array of words
  - For each word, take note of its index in the original array
  - Use that index to find that element in the string
  - push that onto the result string
- Return the result string

=end

def nth_char(array_of_words)
  new_word = ''
  array_of_words.each_with_index do |word, index|
    new_word << word[index]
  end
  new_word
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
