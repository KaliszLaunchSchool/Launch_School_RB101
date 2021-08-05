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
- Create a method which checks to see if a string is the same forwards and backwards
- Case insensitive
- Ignore all non-alphanumeric chars

# Input: string
# Output: boolean

# Algo
- create a plaindrome method
  - check if string == string reverse
- Create a 'clean string' method to normalize case, ignore all non-alphanumeric chars
  - create an array of the alphabet and numbers 0-9
  - downcase the string
  - split the string into chars
  - keep if the array of nums and letters includes that character
  - join the string back into a string
=end

NUMS_AND_LETTERS = ('a'..'z').to_a + ('0'..'9').to_a

def real_palindrome?(string)
  string = clean_string(string)
  string == string.reverse
end

def clean_string(string)
  string.downcase!
  string.chars.keep_if {|char| NUMS_AND_LETTERS.include?(char)}.join
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false