=begin 
Scramble

Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, 
otherwise, return false.

# Problem
- Create a method which accepts 2 parameters (strings)
- check to see if string 1 can be rearranged to match string2's characters
  -If string 1 can be arranged to match, return true
  - If not, return false
- string 1  will always be longer or the same size as string 2
- may be double letters that will need to be checked

p scramble('javaass', 'jjss') == false

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true

Input: 2 strings
Output: boolean

# Algo
- Create a method which accepts 2 string parameters
- Check to see if the first string contains all of the letters of the 2nd string
  - if it does
    - check to see if the first string contains the correct count of letters in the 2nd string
      - create a hash with all the letters of string 2 counted
      - compare the count in the letters in string 1 with the count in string2
    if it does, return true
  - if it does not, return false
=end

def scramble(str1, str2)
  str1_letter_count = str1.chars.tally
  str2.chars.each do |letter|
    return false if str1.include?(letter) == false
    return false if str1_letter_count[letter] < str2.count(letter)
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
