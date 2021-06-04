=begin
Swap Case
Write a method that takes a string as an argument and returns a new string in which every uppercase letter 
is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters 
should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Problem
- Create a mthod which takes 1 string
- Swaps the case of every letter in the string
- Returns new string

# Examples
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Data 
- String
- Array

# Algo
- Create a method which takes 1 string
- Create uppercase and lower case alphabet constants
- split the string into chars
- Iterate through the array
- If uppercase array includes the char, downcase
- If lowercase array includes the char, lowercase
- Else, next

# Code
=end

UPPERCASE_ALPHABET = ("A".."Z").to_a
LOWERCASE_ALPHABET = ("a".."z").to_a

def swapcase(phrase)
  swapped = phrase.chars.map do |character|
    if UPPERCASE_ALPHABET.include?(character)
      character.downcase
    elsif LOWERCASE_ALPHABET.include?(character)
      character.upcase
    else
      character
    end
  end
  swapped.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'