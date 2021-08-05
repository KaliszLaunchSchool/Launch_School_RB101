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
- Create a method which checks if a string is the same thing forward and backward
- Returns true if this is the case, false if not

Input: string
Output: boolean

# Algo
- Create a method which accepts 1 parameter
- check if string is the same as string in reverse

=end

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true