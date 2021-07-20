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
  number_of_letters = string.length
  tracker = 0
  check_array = []
  loop do
    array = string.split(//)
    tracker += 1
    until array.empty?
      check_array << array.pop(tracker)
    end
    if each_element_same?(check_array)
      return true
      break
    else
      check_array = []
    end
    break if tracker == string.length
  end
  false
end

def each_element_same?(array)
  if array.size > 1 && array.all? {|element| element == array[0]}
    true
  else 
    false
  end
end

 p repeated_substring('abab') == true
 p repeated_substring('aba') == false
 p repeated_substring('aabaaba') == false
 p repeated_substring('abaababaab') == true
 p repeated_substring('abcabcabcabc') == true
 p repeated_substring('aaaaa') == true

=begin
LS Solution

Input: string
Output: boolean
Rules: the entire string is a repeating substring

Option 1:
  - Create an array of substrings
    - in length, the factors of the sting (up to half the length of the string)
  - for each substring, multiply it by the length of the string divided by the
   length of the substring
  - Check if that substring multiplication is equal to the string
    - Return true, else, return false at the end
=end

def repeated_substring(string)
  substrings = []
  1.upto(string.size / 2) do |substring_length|
    if (string.size % substring_length == 0)
      substrings << string[0, substring_length]
    end
  end
  substrings.each do |substring|
    multiplier = string.size / substring.size
    return true if substring * multiplier == string
  end
  false 
end

p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true