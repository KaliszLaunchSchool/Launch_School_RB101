=begin
Counting the Number of Characters
Write a program that will ask a user for an input of a word or multiple words and give back the number of 
characters. Spaces should not be counted as a character.

input:
Please write word or multiple words: walk
output:
There are 4 characters in "walk".

input:
Please write word or multiple words: walk, don't run
output:
There are 13 characters in "walk, don't run".

# Problem
- Create a method which asks for a word, gives back the number of characers
- Spaces do not count
- punctuation does count

# Algo
- Ask user for a word or words
- split the word into chars 
- count the chars
- Return the number of characters
=end

puts "Please write word or multiple words:"
words = gets.chomp

#array = words.split.map {|word| word.chars}.flatten 
#count = array.size
count = words.delete(' ').size

puts "There are #{count} characters in '#{words}'."