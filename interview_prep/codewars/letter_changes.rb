=begin
# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

# Problem
- Create a method which takes 1 parameter (string)
  - Modifies the string so that every letter becomes the 3rd letter after it in alphabetical order 
- Spaces remain
- Special chars remain, but don't get converted
- Case remains the original case

abcdefghijklmnopqrstuvwxyz 
- index 2 --> 5
- index 25 --> 2 

* Alphabet goes from index 0 to 25

Input: string
Output: modified string

Algorithm 
- Create an uppercase/lowercase alphabet constents
- Create a method which takes a string
- Initiate a results array
- Split the string into characters
- iterate through that array
  - Check to see if the letter is uppercase or lowercase
    - Depending upon the case, use that particular aplphabet
  - Check to make sure the char is in the alphabet. If it is, continue, if not, just return that character to the results array
  - For each character, replace it with the char at index + 3
    - If the index is 22 --> 0; 23 --> 1 24 --> 2 25 ---> 3
- Return and join the results array

Example: 
p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')
=end

# LOWERCASE_ALPHA = ('a'..'z').to_a
# UPPERCASE_ALPHA = ('A'..'Z').to_a

# def letter_changes(string)
#   results = []
#   string.chars.each do |letter|
#     alphabet = alpha_check(letter)
#     if alphabet == false 
#       results << letter
#     elsif alphabet.index(letter) == 23
#       results << alphabet[0]
#     elsif alphabet.index(letter) == 24
#       results << alphabet[1]
#     elsif alphabet.index(letter) == 25
#       results << alphabet[2]
#     else
#       index = alphabet.index(letter)
#       results << alphabet[index + 3] 
#     end
#   end
#   p results.join
# end

# def alpha_check(letter)
#   if LOWERCASE_ALPHA.include?(letter)
#     alphabet = LOWERCASE_ALPHA
#   elsif UPPERCASE_ALPHA.include?(letter)
#     alphabet = UPPERCASE_ALPHA
#   else
#     alphabet = false
#   end
# end


LOWERCASE_ALPHA = ('a'..'z').to_a
UPPERCASE_ALPHA = ('A'..'Z').to_a

def letter_changes(string)
  results = []
  string.chars.each do |letter|
    alphabet = alpha_check(letter)
    if alphabet == false 
      results << letter
    elsif alphabet.index(letter) > 22 
      index = alphabet.index(letter) % 23
      results << alphabet[index]
    else
      index = alphabet.index(letter)
      results << alphabet[index + 3] 
    end
  end
  p results.join
end

def alpha_check(letter)
  if LOWERCASE_ALPHA.include?(letter)
    alphabet = LOWERCASE_ALPHA
  elsif UPPERCASE_ALPHA.include?(letter)
    alphabet = UPPERCASE_ALPHA
  else
    alphabet = false
  end
end

p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')

# Monte's solution

# def target(idx, size)
#   target_num = 3
#   if idx > (size - target_num)
#     (target_num - (size % idx)) - 1
#   else
#     target_num + idx
#   end
# end


# def letter_changes(str)
#   result = ''
#   characters = str.chars
#   uppercase = ('A'..'Z').to_a
#   lowercase = ('a'..'z').to_a
#   hsh = ('a'..'z').zip(0..25).to_h
#   characters.each do |char|
#     if lowercase.include?(char)
#       size = (lowercase.size - 1)
#       counter = target(hsh[char], size)
#       result << lowercase[counter]
#     elsif uppercase.include?(char)
#       size = (uppercase.size - 1)
#       counter = target(hsh[char.downcase], size)
#       result << uppercase[counter]
#     else
#       result << char
#     end
    
#   end
#   result
# end

# p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
# p letter_changes("Road trip9") == "Urdg wuls9"
# p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
# p letter_changes('wxyz') == ('zabc')
