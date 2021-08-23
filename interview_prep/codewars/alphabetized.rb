=begin
45. Alphabetized
(https://www.codewars.com/kata/5970df092ef474680a0000c9/train/ruby)

The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in 
"case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing the english alphabet letters.

Example:

alphabetized("The Holy Bible") # "BbeehHilloTy"

# Problem
- Create a method which accepts 1 parameter (string)
- Create a new string with the same letters, but without spaces, in alphabetical order (remove whitespace/punctuation)

Rules: no numbers, only englidh alphabetical numbers
Input: String
Output: New string (no spaces or punctuation but keep caps)

# Algo
- Create a method which accepts a string
- Split the string into characters, sort the string alphabetically, using only downcased
- Remove the spaces

=end

def alphabetized(string)
  results = []
  array = string.gsub(/[^a-zA-Z]/, '').chars
  sorted = array.sort_by { |a| [a.downcase, array.index(a)] }
  p sorted.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
