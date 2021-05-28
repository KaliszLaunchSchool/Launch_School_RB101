=begin
ddaaiillyy ddoouubbllee
Write a method that takes a string argument and returns a new string that contains the value of the original 
string with all consecutive duplicate characters collapsed into a single character. You may not use 
String#squeeze or String#squeeze!.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Problem
- Create a method which takes 1 parameter (string)
- Collapse all consecutive chars into a single chaaracter
- Cannot use squeeze
Input: string
Output: a new string

# Examples
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Data
- string
- array

# Algo
- Initiate a method which takes a single parameter (string)
- Initiate an empty array
- split the sting into characters in an array
- push each character into new string unless the character is the same as the last 
- join the new array into a new string

#Code
=end

def crunch(words)
  crunched = []
  words.chars.each do |letter| 
    unless letter == crunched.last
      crunched << letter 
    end
  end
  crunched.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin
LS Solution

=end
