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
  numbers = ("1".."9").to_a
  letters = ("a".."z").to_a
  each_character.keep_if {|character| numbers.include?(character) || letters.include?(character) }
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

=begin
LS Solution

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

Discussion
Chances are you reached for a String#gsub here to eliminate the non-alphanumeric characters. There's nothing 
wrong with that, but we'll take the opportunity to use and talk about String#delete instead. #delete is an 
interesting method that takes arguments that sort of look like regular expressions, and then deletes 
everything formed by the intersection of all its arguments. See the documentation for complete details.

For our purposes, we need to remove the non-alphanumeric characters; to do that, we tell delete to delete 
everything that isn't a letter or digit. We then pass the result to our original palindrome? method to 
determine if the cleaned up string is a palindrome.

Further Exploration
Read the documentation for String#delete, and the closely related String#count (you need to read count to get 
all of the information you need for delete.)

Other solutions by Students

def real_palindrome?(string)
  string = string.delete('^a-zA-Z0-9').downcase
  string == string.reverse ? true : false
end
---------------------------------------------------
def palindrome?(string_or_array)
  string_or_array == string_or_array
end

def real_palindrome?(string)
  no_cap_only_alpha = string.downcase.delete("a-z0-9")

  palindrome?(no_cap_only_alpha)
end
---------------------------------------------------
def real_palindrome?(str)
  str = str.downcase.gsub(/[^0-9a-z]/i, '')
  str == str.reverse
end
---------------------------------------------------
def real_palindrome?(string)
  new_string = string.downcase.gsub(/[^a-z0-9]/i, '')
  new_string_reverse = new_string.reverse
  new_string.reverse == new_string

end
=end
