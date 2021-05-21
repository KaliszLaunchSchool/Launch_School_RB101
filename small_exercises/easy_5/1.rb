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

def ascii_value(string)
  sum = 0
  string.each_char do |char| 
    sum += char.ord 
    p char.ord.to_s
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

=begin
LS Solution

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

Discussion
There isn't much to say here. We initialize the sum to 0 (which takes care of the empty 
string case in addition to giving us a starting value), then add String#ord for every 
character to that sum. Finally, we return the sum.

Further Exploration
There is an Integer method such that:

char.ord.mystery == char
where mystery is our mystery method. Can you determine what method name should be used in 
place of mystery? What happens if you try this with a longer string instead of a single 
character?
=end
