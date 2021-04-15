=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
The tests above should print true.

## Problem ##
- Create a method that takes a string
- Returns a new string in reverse order

## Examples ##
- Do cases get changed? No
- Do the letters get reversed as well? no, just the words

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
The tests above should print true.

## Data ##
String
Array

## Algorithm ##
- Create a method which takes a string
- Split the string
  - Becomes array
- Reverse the array order
- Array back to string
- Return the string

## Code ##
=end

def reverse_sentence(string)
  sentence_array = string.split
  sentence_array_reversed = sentence_array.reverse
  reversed_string = sentence_array_reversed.join(" ")
  reversed_string
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
