=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, 
otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.

# Problem
- Create a method which accepts 2 parameters (word1, word 2)
- If word1 can be rearranged to match word2, return true
- else, comare false

- All letters are lowercase, no punctuation, no numbers

Input: 2 strings
Output: boolean

Algo
- Create a method which accepts 2 parameters (word1, word2)
- break word_2 into an array of characters
  - Iterate through the array, checking to see if word 1 contains each word
  - break if false, and return false
  - If all characters return true (ie. each letter is within word 1), return true
=end

def scramble(word_1, word_2)
  answer = true
  word_2.chars.each do |letter|
    if word_1.include?(letter) == false
      answer = false
    end
  end
  answer
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
