=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence 
"The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
# Problem
- Create a method which scans a string, and checks to see if it contaains every letter of the alphabet at least once
- if it does, return true
- if it does not, return false
- Ignore case, numbers, and punctuation

Input: string
Output: boolean
Intermediate: arraay

# Algo
- Create a lowercase alphabet constant
- Create a method which accepts 1 parameter (string)
- Split the string into letters 
  - check to see if each letter of the alphabet is in the array of letters 
    - make the array unique
    - delete all non-alphabetical characters
    - sort?
    - compare the constant with the other
  - if it contains each letter, return true
=end

ALPHABET = ('a'..'z').to_a

def panagram?(string)
  check_array = string.downcase.gsub(/[^a-z]/, '').split(//).uniq
  if ALPHABET == check_array.sort
    return true 
  else 
    return false
  end
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false

