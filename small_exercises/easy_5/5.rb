=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, 
write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If 
one or more non-alphabetic characters occur in a row, you should only have one space in the result (the 
result should never have consecutive spaces).

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

# Problem
- Create an array which takes 1 parameter (string)
- string contains some words
- replace all non-alphabetic chars with spaces
- Only one space at a time (should not have consecutive spaces)
Input = string
Output = string

# Examples
cleanup("---what's my +*& line?") == ' what s my line '

# Data
- string
- array

# Algo
- Define a method which takes one parameter (string)
- Split the string into characters
- Iterate through the characters, if not a..z, char = ' '
- Take this new array, and reject all spaces if there is already a space before it

# Code

=end

def replace_nonalphabetic(characters)
  alphabetic_chars = ('a'..'z').to_a
  characters.map do |character|
    if alphabetic_chars.include?(character)
      next
    else
      character.replace(' ')
    end
  end
end

def delete_double_spaces(characters)
  counter = 0
  loop do
    if characters.values_at(counter, counter+1).all?(' ')
      characters.delete_at(counter)
      counter -= 1
    end
    counter += 1
    break if counter == characters.size
  end

end

def cleanup(sentence)
  characters = sentence.chars
  replace_nonalphabetic(characters)
  delete_double_spaces(characters)
  characters.join
end

p cleanup("---what's my +*& line?") == ' what s my line '

=begin
LS Solution

Solution 1

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

Solution 2

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').gsub(/[' ']+/, ' ')
end

Discussion
Our first solution is straightforward. We begin by initializing a constant to contain an array of all the 
letters in the alphabet. The letters of the English alphabet are not meant to change, so this is a good use 
case for a constant. Note our use of a range to get all lowercase alphabetical characters between 'a' and 'z'. 
We can then convert the range into an array and have access to useful array methods like include?.

Inside our method we iterate over all the characters of the original string. We use a conditional statement to 
append a character to the clean_chars array if it is included in the alphabet, and a space otherwise. Notice 
also that we use an unless clause to avoid including superfluous spaces in the final string.

While this first solution is perfectly fine, using regular expressions can sometimes really help with messy 
text manipulation, as illustrated by the second solution. They aren't always the wisest choice for 
understandable code, but they can save a lot of effort in some cases. You don't have to be familiar with 
regular expressions at this stage, but a little knowledge can go a long way.

This method is quite simple: using the gsub call, it simply replaces all non-alphabetic characters in text 
with a space, then squeezes out all of the duplicate spaces. (The squeeze call could be replaced by another 
gsub call, but squeeze is easier to understand at a glance.)

If you are unfamiliar with regular expressions, the expression /[^a-z]/i is a regular expression that matches 
any character that is not an uppercase or lowercase letter. The /i part of this expression is what makes this 
expression case insensitive. gsub replaces all characters in text that match the regular expression in the 1st 
argument with the value in the 2nd argument.

Note that in both our solutions we are returning a new string object. If you are unsure after reading a problem 
description whether you should return a new string object or the same one, that would be a great question to 
ask an interviewer.

Further Exploration
If you originally wrote this method with regular expressions, try writing it without regular expressions.
=end
