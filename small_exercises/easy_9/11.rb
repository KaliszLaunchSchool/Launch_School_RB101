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

=begin
LS Solution

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

Discussion
The trickiest part of this problem is figuring out how to check if two words are anagrams. Since anagrams are 
two words which contain exact same letters, but in different order, if we sort each anagram word, values should 
be the same. For example:

dome and mode are anagrams because when we sort both of them we get demo.

Now that we know how to find anagrams, we can use a hash to store the sorted version of the word as the key in 
the hash and its value will be an array of all anagrams of that word.

Translating this to code...we first initialize a hash result.

Then, we iterate over the words array and in each iteration:

We check if the sorted version of the word is already in the hash. If it is we add it to the value array.
If the sorted version is not in the hash we add it to the hash and the initial value of that key is just the 
array with that word in it.
In the end we print the values in the result hash.
=end
