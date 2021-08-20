=begin
31. Anagram Detection
(https://www.codewars.com/kata/529eef7a9194e0cbc1000255)

An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"

"Buckethead" is an anagram of "DeathCubeK"

# Problem
- Create a method which accepts 2 strings
- Returns true if the strings are anagrams, false if they are not
* Case insensitive!

Input: 2 strings
Output: boolean

# Algo
- Create a method which accepts 2 strings
- Downcase each string for comparison, split into chars, and sort
- if string 1 = string2, return true, else false

=end

def is_anagram(str1, str2)
  comp1 = str1.downcase.chars.sort
  comp2 = str2.downcase.chars.sort
  return false if comp1 != comp2
  true
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
