=begin
Your task is to create a method that turns a string into a wave (like at a stadium). You will be passed a string and you must return that 
string in an array where an uppercase letter is a person standing up.

Rules

The input string will always be lower case but maybe empty.
If the character in the string is whitespace then pass over it
Leave each fourth letter unaltered—-do not make those letters uppercase

# Problem
- Create a method which takes a string
- Convert into a "wave" array where each progressive letter stands up
  - If the char is whitespace, pass over it
  - 4th lettter of the string should not be uppercased (index 3,7,ll)
- If the string is empty, return an empty array

Input: string
Output: array of strings

# Algo
- Create a method which takes a string
- Initiate a results array
- Initiate a counter = 1 (increment each time, once 4, skip that one)
- Find the size of the string (number of iterations)
  - n times we will:
  - if char = ' '
    - move onto the next iteration
   - if n % 4 == 0 
    - add the string to the results string
  - Otherwise: 
    - capitalize the letter at  index
    - add the string to the results string
  - Increment the counter
=end

def wave(string)
  results = []
  counter = 1
  characters = string.chars
  characters.each_with_index do |char, index|
    lowercase_string = string.downcase
    if char == ' '
      next
    elsif counter % 4 == 0
      results << lowercase_string
    else
      lowercase_string[index] = lowercase_string[index].upcase
      results << lowercase_string 
    end
    counter += 1
  end
  results 
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"]
p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"]
p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"]
p wave("") == []