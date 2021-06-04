=begin
Staggered Caps (Part 1)
Write a method that takes a String as an argument, and returns a new String that contains the original value 
using a staggered capitalization scheme in which every other character is capitalized, and the remaining 
characters are lowercase. Characters that are not letters should not be changed, but count as characters 
when switching between upper and lowercase.

Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Problem
- Write a method which takes a string
- capitalize every other letter, and lowercase the others

Input: String
Output: String

# Examples
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Data 
- String
- Array

# Algo
- Create a method which takes 1 parameter (string)
- Break into chars 
- Iterate through the chars array with indexes
  - If index even? uppercase
  - If index odd? lowercase
- Return new string

# Code
=end

def staggered_case(phrase)
  changed_phrase = phrase.chars.each_with_index do |character, index|
    if index.even?
      character.upcase!
    elsif index.odd?
      character.downcase!
    end
  end
  p changed_phrase.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'