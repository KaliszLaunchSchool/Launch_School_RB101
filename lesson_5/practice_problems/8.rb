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

=begin
LS Solution

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
# e
# u
# i
# o
# o
# u
# e
# o
# e
# e
# a
# o
The key here is to first iterate through the hash to access the values (the arrays) and then iterate through each array 
to access each string. At this point String#chars can be called within the block to return an array of characters for 
that string in that iteration, this array of characters can itself then be iterated through and puts called if on its 
iteration the character meets a condition (in this case that it is present in the vowels variable).

Note that we used each here, which means each iteration has an argument for a key and one for the value. Since we don't 
care about the key, we just use _ to signify that this is an argument that we aren't going to use. We could also have 
used Hash#values as well.
=end