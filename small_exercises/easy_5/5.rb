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
