=begin
29. Split Strings
(https://www.codewars.com/kata/515de9ae9dcfc28eb6000001)

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd 
number of characters then it should replace the missing second character of the final pair with an underscore 
('_').

# Problem
- Create a method which takes a string
- Splits it into an array with pairs of 2 chars
  - If odd number of strings, the final pair ends in _

Input: string
Output: Array of substrings

# Algo
- Create a method which takes a string
- Initiate a result array
- If the string size is odd, append '_' to the end of the string
- Split the string into characters
  - Iterate through the array, push every 2 chars into the result array as strings

=end

def solution(string)
  string << '_' if string.size.odd?
  results = []
  string.chars.each_with_index do |char, index|
     results << (string[index] + string[index + 1])
     index += 2
     break if index >= (string.size)
  end
  p results.select {|substring| results.index(substring).even?}
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
