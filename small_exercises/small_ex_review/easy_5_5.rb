=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, 
write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If 
one or more non-alphabetic characters occur in a row, you should only have one space in the result (the 
result should never have consecutive spaces).

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

# Problem
- Given a string of some LOWERCASE words and an assortment of non-alphabetic chars
- Return a string with all non-alphabetic chars replaced by spaces
- If multiple non-alphabetic chars, you should only have one space

Inpit: string
Output: string

# Algo
- Create a method which accepts 1 parameter (string)

=end

cleanup("---what's my +*& line?") == ' what s my line '