=begin
Double Char (Part 2)
Write a method that takes a string, and returns a new string in which every consonant character is doubled. 
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

# Problem
- Create aa method which takes 1 string
- Returns a new string in which all consonants are doubled
  - Vowels, digits, punctuation, white space not doubled

# Example
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

# Data
- String
- Array

# Algo
- Create a method which takes 1 string
- Initiate empty string
- Iterate through the string, use doubler method if consonant
- Else, return the single letter
- return the new string

# Code
=end


def double_consonants(string)
  consonants = ('A'..'Z').to_a + ('a'..'z').to_a
  consonants.delete('A')
  consonants.delete('E')
  consonants.delete('I')
  consonants.delete('O')
  consonants.delete('U')
  consonants.delete('a')
  consonants.delete('e')
  consonants.delete('i')
  consonants.delete('o')
  consonants.delete('u')

  result = ''
  string.each_char do |char|
    if consonants.include?(char)
      result << char << char
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""