=begin
Practice Problem 8
Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# Problem
- Output all of the vowels from the strings using the each method
Input: Hash
Output: string

#Example
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
  ==> e, i, o, o, u, e, o, e, e, a, o

# Data
- Hash, array, string

# Algo
- Access the values of each key/value pair
- Add values to an array
  - should now be an array of strings
  - flatten if necessary
- Iterate through the array, deleting everything except a, e, i, o, or u
- Return the vowels
=end

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
words = []
characters = []

hsh.each do |key, value|
  words << value
end

words.flatten.each {|word| characters << word.chars}
p characters.flatten.join.delete("^aeiou")