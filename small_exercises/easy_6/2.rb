=begin
Delete vowels
Write a method that takes an array of strings, and returns an array of the same string values, except with the 
vowels (a, e, i, o, u) removed.

Example:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Problem
- Write a method which taakes 1 parameter(array of strings)
- Returns array with the same string values, however each string has a,e,i,o,u removed
- Also remove capitals

Input: Array of strings
Output: Array of strings with the strings mutated

# Examples
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Data
Array 
String

# Algo
- Create a method which takes 1 parameter
- Iterate through the array, delete if AEIOU or aeiou
- Return the original array (with mutated strings)
=end

def remove_vowels(array)
  array.each do |string|
    string.delete!('aeiouAEIOU')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

