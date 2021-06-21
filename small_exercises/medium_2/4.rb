=begin
Matching Parentheses?
Write a method that takes a string as an argument, and returns true if all parentheses in the string are 
properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' 
pairs.

Examples:

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
Note that balanced pairs must each start with a (, not a ).

# Problem
- Write a method which checks to see if all the parathenses in a string are 
  properly balanced (occur in matching '(' and ')') 
  - '(' must be first
Input: String
Output: Boolean

# Data
- String
- Array
- Boolean

# Algo
- Create a method which accepts 1 parameter
  - A sentence
- Split the sentence into an array of characters
- Iterate through the array, select all '(' and ')'
  - if first char is ')' return false
  - else, check to see if every '(' has a matching ')'
=end

def balanced?(sentence)
  only_parentheses = sentence.chars.select {|char| char == '(' || char == ')'}
  number_of_opened = only_parentheses.count('(')
  number_of_closed = only_parentheses.count(')')
  if only_parentheses[0] == ')'
    return false
  elsif only_parentheses[-1] == '('
    return false
  elsif
    number_of_opened != number_of_closed
    return false
  else 
    return true
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false