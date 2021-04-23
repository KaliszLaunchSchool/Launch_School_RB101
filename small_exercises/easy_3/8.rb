=begin
Palindromic Strings (Part 1)
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and 
spaces.

Examples:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

# Problem
Input: string
Output: boolean

- Create a method which takes 1 argument (string)
- Returns true if the string reads the same forward and back 
- Returns false otherwise
- Case matters
- punctuation matters
- Do spaces matter?

# Examples
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

# Data
 String
 Boolean

# Algo
- Create a method
  - Takes 1 string as its argument
-  If string = string in reverse

# Code
=end

def palindrome?(string)
  if string == string.reverse
    true
  else false
  end
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          
puts palindrome?("madam i'm adam") == false 
puts palindrome?("madam im adam") == false
puts palindrome?('356653') == true

=begin
LS Solution

def palindrome?(string)
  string == string.reverse
end

Further Exploration
Write a method that determines whether an array is palindromic; that is, the element values appear in the same 
sequence both forwards and backwards in the array. Now write a method that determines whether an array or a 
string is palindromic; that is, write a method that can take either an array or a string argument, and 
determines whether that argument is a palindrome. You may not use an if, unless, or case statement or modifier.
=end
