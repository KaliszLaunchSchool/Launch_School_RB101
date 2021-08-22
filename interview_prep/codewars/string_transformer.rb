=begin
38. String transformer
(https://www.codewars.com/kata/5878520d52628a092f0002d0/train/ruby)
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.

string_transformer('Example string') == 'STRING eXAMPLE'

# Problem
- Crete a method which accepts a sting
  - Change the case of every letter of the string
  - If there are multiple words, reverse the order of the words

Input: string
Output: transformed string
Intermed: array

# Algo
- Create a method which accepts a string
- Break the string into words, and reverse the order of the words
- Send each word into the helper method
- Combine the array back into a string

- Helper method: switch_case
  - Given a string, switch the case of every letter in the string
  - Return the switched string

=end

def string_transformer(string)
  array = [] 
  string.split(/ /).reverse.each {|word| array << switch_case(word)}
  array.join(' ')
end

def switch_case(word)
  word = word.chars.map do |letter|
    if letter.upcase == letter
      letter = letter.downcase
    else 
      letter = letter.upcase
    end
  end
  word.join
end

p string_transformer('Example string') == 'STRING eXAMPLE'
p string_transformer("Example Input") == "iNPUT eXAMPLE"
p string_transformer("Ugjuz Kfde Zvhulw Zaia") == 'zAIA zVHULW kFDE uGJUZ'
p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"

#Expected: "bLING hOTLINE  that  wHEN kNOW yOU", instead got: "bLING hOTLINE that wHEN kNOW yOU