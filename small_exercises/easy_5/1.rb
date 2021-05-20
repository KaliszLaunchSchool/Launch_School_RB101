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
- Create a method, takes a string as an argument
- Returns ASCII string value
- ASCII string value = sum of ASCII values of evey character in the string

-Input: string
- Output: integer

# Examples
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Data 
String
Integer
Array

# Algo
- Define a method which takes one argument (string)
- Initiate an array
- Split the string into its components
- Each component invoke string#ord to get the integer ordinal, and push to array
- sum the array
# Code

=end
def ascii_value(string)
  characters_as_ascii = []
  string.chars.each { |char| characters_as_ascii << char.ord}
  characters_as_ascii.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0