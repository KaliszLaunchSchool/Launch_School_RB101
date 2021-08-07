=begin
ASCII String Value
Write a method that determines and returns the ASCII string value of a string that is 
passed in as an argument. The ASCII string value is the sum of the ASCII values of 
every character in the string. (You may use String#ord to determine the ASCII value of 
a character.)

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Problem
- Create a method which determines the ASCII value of each character of the string
- Sum the values

Input: String
Output: Integer

# Algo
- Create a metod which accepts one parameter (string)
- Initiate a value variable, initialize to 0
- Split the string into characters
- Iterate through the characters, for each character, determine the ascii value and add it to the value variable
- Return the value variable
=end

def ascii_value(string)
  values = 0
  string.chars.each do |char|
    value = char.ord
    values += value
  end
  values
end



p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0