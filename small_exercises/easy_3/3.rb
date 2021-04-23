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
- Ask user for a word or multiple
- Provide the number of characters
- Punctuation does count as characters
- Spaces do not count as characters

Input: String
Output: String

# Examples

input:
Please write word or multiple words: walk
output:
There are 4 characters in "walk".

input:
Please write word or multiple words: walk, don't run
output:
There are 13 characters in "walk, don't run".

# Data
String
Integers
Arraya

# Algo
- Ask user for a word or words
- Save user input in variable as a string
- Duplicate user input
- Break up string into an array of characters
- Delete spaces
- Count the number of elements in the array = number of characters
- Return the original array along with the number of characters

#Code
=end

puts "Please write word or multiple words:"
user_input = gets.chomp
user_input_copy = user_input.dup

characters = user_input_copy.chars.delete_if {|character| character == " "}
character_count = characters.count

puts "There are #{character_count} characters in \"#{user_input}\"."
