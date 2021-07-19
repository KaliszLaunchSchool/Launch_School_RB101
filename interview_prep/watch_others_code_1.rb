=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple 
copies of the substring together. You may assume the given string consists of lowercase English letters only.

Example 1:
 - Input "abab"
 - Output: True
 - Explanation: It's the substring 'ab' twice.

Example 2:
 - Input: "aba"
 - Output: False

 # Problem
 Given a string, check the string to see if it can be created by appending a substring together
 - Given string will be lowercase
 - Given string will be non-empyy
 Input:string
 Output: boolean

 # Data
 - String
 - Array

 # Algo
 - Given a string
 - Split the string into an array of characters, each character is a different element
 - Check if each element in the array is the same (is each element in the array the same)
  - If yes, return "True"
  - If no, split the string again, this time into substrings of 2, 3, 4 characters etc
  - If gets to 1 element, return "false"
=end

def repeated_substring(string)
  num_of_letters = string.length - 1
  array = string.split(//)
  check_array = []
  until array.empty?
    check_array << array.pop(2)
    p check_array
  end
end

p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true
