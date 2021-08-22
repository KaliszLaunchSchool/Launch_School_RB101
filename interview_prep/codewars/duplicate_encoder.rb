=begin
40. Duplicate Encoder
(https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby)

The goal of this exercise is to convert a string to a new string where each character in the new string is "(" 
if that character appears only once in the original string, or ")" if that character appears more than once in the original string. 
Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

# Problem
- Create a method which takes a string, converts it into a new string with every char as "(", unless the character appears more than once
  - If char appears more than once, the new char should be ")"
- Case insensitive (S = s)

p duplicate_encode("din") == "((("
 d(1) = (; i(1) = (; n(1) = (;
p duplicate_encode("recede") == "()()()"
  i(r) = (; e(3) = ); c(1) = (; e(3) = ); d(1) = (; e(3) = );
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("

Input: string
Output: string
Intermed: hash, array

# Algo
- Create a method which takes a string
- Tally the count for each letter in the string, store as a hash
- Create a new_chars variable, initialzied as an array
- Iterate through the string
  - If the letter count is 1 in the tally hash, add '(' as a new char
  - If the letter count is greater than 1, add ')' as the new char
- Join the new chars var into a string and return that string

=end

def duplicate_encode(string)
  counted_letters = string.downcase.chars.tally
  new_chars = []
  string.chars.each do |char|
    if counted_letters[char] == 1
      new_chars << '('
    else 
      new_chars << ')'
    end
  end
  new_chars.join
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
