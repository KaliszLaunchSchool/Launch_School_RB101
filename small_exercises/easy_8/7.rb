=begin
Double Char (Part 1)
Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

# Problem
- Write a methos which takes 1 parameter
- Returns a new string in which every character is doubled
- Including non-alphabetic characters (inc spaces)

Input: String
Output: New string

# Examples
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

# Data 
String
Array

# Algo
- Create a method which takes 1 parameter (string)
- Create empty array
- Split the string into chars array
- Iterate through the array, duplicating each char, push both into empty array
- Join the new array and to return the new string

# Code
=end

def repeater(phrase)
  doubled_phrase = []
  phrase.chars.each do |char|
    doubled_phrase << char + char
  end
  doubled_phrase.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

=begin
LS Solution

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

Discussion
This solution is straightforward. We initialize a result string, then iterate through the original string 
while appending each character to the result 2 times. Finally, we return the result string.

=end