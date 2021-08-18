=begin
543. WeIrD StRiNg CaSe
(https://www.codewars.com/kata/52b757663a95b11b3d00062d) 

Write a function weirdcase that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

# Problem
- Create a method which takes a string
  - Even indexes are capitalized (starting with 0)
  - Odd indexes are lowercased
- String is a series of upper/lowercase alphabetical chars and spaces
- Spaces remain if multiple words are in original string
  - Words = letters separated by spaces

Input: String
Output: Same (manipulated) String 
Intermed: Array 

#Examples
p weirdcase( "String" ) == "StRiNg"
 0: s --> even S(upper)
 1: t ---> odd t(lower)
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
0: w --> even W(upper)
1: e --> odd e  (lower)
2: i --> even (upper)
3: r --> odd (lower)
4: d --> even (upper)
5: space --> odd (lower)
6: s -->even(upper)
7: t --> odd (lower)
8: r --> even(upper)
9: i --> 

'This is a test' ==> 'ThIs Is A TeSt' 

# Algo
- Create a method which takes 1 parameter (string)
- Create a result array
- Split the string into its words
  Split each word into an array of characters
  - Iterate through the caracters, with their indexes
    - If the index of the char is even, uppercase it
    - If the index of the char is odd, lowercase it
  - Join the manipulated array with spaces, and return the resulting string

=end

def weirdcase(string)
  weird_cased_array = []
  string.split.each do |word|
    weird_cased_word = []
    word.chars.each_with_index do |char, idx|
      if idx.even?
        weird_cased_word << char.upcase
      else
        weird_cased_word << char.downcase
      end
    end
    weird_cased_array << weird_cased_word.join
  end
  weird_cased_array.join(' ')
end

p weirdcase( "String" ) == "StRiNg"
p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"