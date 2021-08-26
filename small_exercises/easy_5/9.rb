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


def crunch(words)
  words.squeeze {|char| char}
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin
LS Solution

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

Discussion
This one isn't too bad. We have to go through each character of this string and check for any consecutive 
duplicate characters. The plan is to build the return value, character by character, in the string referenced 
by crunch_text. With that in mind, we use index to track our position in text.

On each iteration of our loop, we check whether the current indexed character is equal to the next character 
in text. If the characters are the same, we do nothing but advance the index to the next character in text. 
Otherwise, we append the current character to crunch_text and increment the index.

Further Exploration
You may have noticed that we continue iterating until index points past the end of the string. As a result, 
on the last iteration text[index] is the last character in text, while text[index + 1] is nil. Why do we do 
this? What happens if we stop iterating when index is equal to text.length?

Can you determine why we didn't use String#each_char or String#chars to iterate through the string? How would 
you update this method to use String#each_char or String#chars?

You can solve this problem using regular expressions (see the Regexp class documentation). For a fun challenge, 
give this a try with regular expressions. If you haven't already read our book, Introduction to Regular 
Expressions, you may want to keep it handy if you try this challenge.

Can you think of other solutions besides regular expressions?
=end
