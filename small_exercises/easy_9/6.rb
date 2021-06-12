=begin
How long are you?
Write a method that takes a string as an argument, and returns an Array that contains every word from the 
string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space 
characters is a word.

Examples
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

# Problem
- Create a method which takes 1 parameter (string)
- Iterate through the array
  - For each word, append a space and the word length
  - Return the word with their respective lengths as an array
- Assume:
  - Words are separated by exacttly one space
  - Any substring of non-space characters is a word

Input: string
Output: array

# Examples
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

# Data
- String
- Array
- Integers

# Algo
- Create a method which accepts 1 parameter (string)
- Initiate a results array
- Split the string at the spaces to get an array of words
- Iterate through the array of words
  - Add a space, and the word's size to each
- Return the aarray

# Code
=end

def word_lengths(phrase)
  results =[]
  phrase.split(" ").each do |word|
    results << word + ' ' + word.size.to_s
  end
  results
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

=begin
LS Solution

def word_lengths(string)
  words = string.split

  words.map do |word|
    word + ' ' + word.length.to_s
  end
end

Discussion
Let's take it step by step. First we want to split the separate words into an array:

Copy Code
irb(main):001:0> string = "cow sheep chicken"
=> "cow sheep chicken"
irb(main):002:0> string.split
=> ["cow", "sheep", "chicken"]
We store this word array in a words variable. Then we realize we need to modify each word separately, that is 
to transform our words array. This is a good use case for Array#map. Remember that map will return a new array, 
of the same size as the caller array, with each element replaced according to the return value of the block. 
Let's test this out with a simple example:

irb(main):003:0> ["cow", "sheep", "chicken"].map { |word| word + '!' }
=> ["cow!", "sheep!", "chicken!"]
This is close, but not exactly what we want. We can use string concatenation to combine the word with its 
length. Remember that the length will be an integer and needs to be converted to a string before you can 
concatenate them.

We could also use string interpolation and method chaining to solve this problem in one line:

def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end

=end
