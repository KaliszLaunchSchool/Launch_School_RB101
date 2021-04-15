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

=begin
LS Solution

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

Discussion
To reverse the order of substrings within a string, we first need to separate those substrings. In our 
solution, we use #split with no arguments to separate each word and place it in an array. To reverse the order 
of the words, we then invoke #reverse on the array. Now, string looks like this:

'Hello World'.split.reverse # => ["World", "Hello"]

That's precisely what we want except we need it to be a string, not an array. To accomplish this, we invoke 
#join which joins every element in an array using the given argument as the delimiter.
=end
