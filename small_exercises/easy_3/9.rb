=begin
Palindromic Strings (Part 2)
Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric 
characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous 
exercise.

Examples:

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# Problem

Input: String
Output: Boolean

- Write a method which takes 1 string
- If string == string reversed, true
- Else false
- Case does not matter
- Only alphanumerics matter (punctuation does not matter)

# Examples
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# Data
String
Array
Boolean

# Algo
- Write a method which takes a string
- Returns true if string == string.reverse
- Write a method to prep the string
  - Split into characters(array)
  - downcase
  - Delete unless a..z or 0..9
  - join
  - run through palindrome method

# Code
=end



def real_palindrome?(string)
  prepped_string = prep_string(string)
  prepped_string == prepped_string.reverse
end

def prep_string(string)
  each_character = string.downcase.chars
  numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  each_character.keep_if {|character| numbers.include?(character) || letters.include?(character) }
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false