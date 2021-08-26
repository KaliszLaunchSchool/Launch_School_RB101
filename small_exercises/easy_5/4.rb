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
    first_letter  = word[0]
    last_letter = word[-1]
    word[0] = last_letter
    word[-1] = first_letter
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

=begin
LS Solution

Using substrings

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
Discussion
Our solution takes a straightforward approach; it simply chops the string into words, then iterates through 
all of the words using map, and produces an array of modified words. We then apply join to that array to 
produce our return value.

The tricky part here is actually swapping the first and last characters of each word. Because of the mild 
trickiness, we use a separate method. It uses this common idiom:

a, b = b, a
to exchange the values of a and b. In our method, a is the first letter of the word, and b is the last letter 
of the word. When Ruby sees something like this, it effectively creates a temporary array with the values from 
the right side ([b, a]), and then assigns each element from that array into the corresponding named variable:

a = b   # b is value from position 0 of temporary array (original value of b)
b = a   # a is value from position 1 of temporary array (original value of a)
Looked at another way, this is equivalent to:

temporary = [b, a]
a = temporary[0]
b = temporary[1]
This multiple-assignment syntax is powerful and complex, and it sometimes surprises people who haven't seen it 
before. Nevertheless, you should at least learn and use this idiomatic form of the syntax, but beware of using 
the more complex forms allowed by Ruby.

Further Exploration
How come our solution passes word into the swap_first_last_characters method invocation instead of just 
passing the characters that needed to be swapped? Suppose we had this implementation:

def swap_first_last_characters(a, b)
  a, b = b, a
end
and called the method like this:

swap_first_last_characters(word[0], word[-1])
Would this method work? Why or why not?
=end

def swap(string)
  string.split.map do |word|
    letters = word.chars
    letters[0], letters[-1] = letters[-1], letters[0]
    letters.join
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'