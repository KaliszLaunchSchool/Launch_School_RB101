=begin
35. Mexican Wave
(https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/ruby)

In this 
simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that 
string in an array where an uppercase letter is a person standing up.
Rules
1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

# Problem
- Create a method which turns a string into a "mexican wa"
  - each letter in turn 'stands up'
- String will always be lower case to begin
- String may be empty
- If whitespace, just skip and go to the next letter
- No special chars,  nums

Input: lowercase string
Output: an array of the same string with each letter in turn capitalized

# Algo
- Create a method which accepts 1 parameter (string)
- Initiate a results array
- Split the string into characters
  - Iterate through with the indexes
  - at each index, check to see if it is a letter
    - if so, capitalize that letter
    - otherwise, move to the next iteration
  - join the array back into a string to push to the results array
- Return the results array
=end

def wave(string)
  wave = []
  characters = string.chars
  characters.each_with_index do |char, index|
    lowercase_wave = string.downcase
    if ('a'..'z').include?(char)
      lowercase_wave[index] = char.upcase
      wave << lowercase_wave
    end
  end
  p wave
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
