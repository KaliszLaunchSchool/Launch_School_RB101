=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

# Problem
- Create a method which accpets a string in camel case
- Convert camel case to kebab case
  - kebab case contains only lowercase letters
  - Each word has '-' between it, without spaces

Input: camelCase string
Output: kebab case string

# Algo
- Create a method which takes a string in camelCase
- Create an array with each word
  - Rules: 1st word is from 0 index to the letter before the first upper case letter
  - Every word after is from the upper case letter to the letter before the next upper case letter
  - The last word is from the last uppercase letter to the end of the string
- Downcase each word
- Join the array with a '-' between each word
=end 

UPPERCASE_ALPHABET = ('A'..'Z').to_a
LOWERCASE_ALPHABET = ('a'..'z').to_a

def kebabize(camel_case_string)
  string = camel_case_string.chars.map do |letter|
    if UPPERCASE_ALPHABET.include?(letter)
      letter = "-" + letter.downcase
    elsif LOWERCASE_ALPHABET.include?(letter)
      letter
    end
  end
  p string.join
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
