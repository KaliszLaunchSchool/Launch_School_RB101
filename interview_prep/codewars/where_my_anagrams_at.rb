=begin
What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. 
For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and 
an array with words. You should return an array of all the anagrams or an empty array if there are none. 
For example:

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

Note for Go
For Go: Empty string slice is expected when there are no anagrams found.

# Problem
- Create a method which accepts 2 parameters: string and an array
- Find all of the anagrams (strings with the same letters) from the given list
- Return the list of anagrams
  - If no matches, return empty string

# Algo
- Create a method which accepts a string and an array of strings
- Iterate through the array of strings
  - Select any strings which are anagrams

- anagrams?
  - if a sorted string = the sorted string from the list, true, 
  - else false
=end

def anagrams(string, array)
  anagrams = array.select {|option| anagram?(string, option)}
  p anagrams
end

def anagram?(string1, string2)
  return true if string1.chars.sort == string2.chars.sort
  false
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
