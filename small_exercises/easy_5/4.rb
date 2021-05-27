=begin
Letter Swap
Given a string of words separated by spaces, write a method that takes this string of words and returns a 
string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least 
one word. You may also assume that each string contains nothing but words and spaces

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Problem
Write a method wich takes one parameter (string)
Returns a string in which the first and last letters of each word are swapped
Case remainsthe same
the rest of the word remains the same
the order of the words remains the same
- Input: String
- Output: String

# Examples
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Data
- string
- array

# Algo
- Define a method: Takes a string
- Split the string by spaces (now have an araay of strings of each word in the string)
- For each word, find the size, and store string[0] and string[size-1] in variables
- swap those strings, returning the new string to the array
- join the array with spaces
=end

def swap(sentence)
  words = sentence.split(/ /)
  words.map do |word|
    last_index = word.size - 1
    first_letter  = word[0]
    last_letter = word[last_index]
    word[0] = last_letter
    word[last_index] = first_letter
    word
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin
On `lines 40–51` we are defining the method `swap` which takes 1 parameter.

In `line 41` we initiaite variable `words` and assign it to the return value of calling the method 'split'
  on `sentence`. This returns a new array, which is stored in our variable

On `lines 42-49` we invoke the map method on the local variable words and pass in the do..end block as an 
  argument. As the map method iterates over each element in the array, it swaps the letters. 
  Somethign about variables as pointers

On `line 53`, `line 54`, and `line 55` we are calling the method `swap` and passing in the String object 
`sentence` as an argument to it. We compare the return value of `swap` to our anticipated return value. 
They are compared with the `==` operator, which will return `true` or `false`. In Ruby, everything is 
considered `truthy` unless `false` or `nil`, and so `lines 53-55` evaluate as 'true', and so 'true is output'
=end
