=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
The tests above should print true.

# Problem
- Create a method which takes a string, 
- reurns a new string, each word is reversed

Input: string
Output: sting

# Algo
- Create a method which accepts 1 parameter (string)
- Split the string at the spaces, so each word is an element of an array
- call the reverse method on the array
- join the new array
- return the new string
=end

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'