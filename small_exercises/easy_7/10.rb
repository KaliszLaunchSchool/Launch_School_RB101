=begin
The End Is Near But Not Here
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples:

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# Problem
- Write a method which accepts 1 parameter (string)
- Returns the second to last word in the string
- Word = sequence of non-blank characters
- Assume string will always contain at least 2 words

Input: String
Output: string

# Exercises
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# Data
- String
- Array

# Algo
- Create a method which accepts 1 paarameter (string)
- Split the string by the spaces into an array 
- Return Array[-2]

# Code
=end

def penultimate(string)
  string.split(' ')[-2]

end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
