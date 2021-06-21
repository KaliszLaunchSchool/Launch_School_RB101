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

=begin
LS  Solution

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

Discussion
This is one problem that seems very difficult, but is actually quite easy to solve. A string is balanced if for
each left parenthesis we have a matching right parenthesis.

We can keep track of this by keeping a tally of the total parentheses count. Left parentheses are +1 and right 
parentheses are -1. If our string is balanced, then the total, parens will always be zero after parsing string.

Notice how we have break if parens < 0. This is used to account for cases where a right parenthesis occurs 
before a left parenthesis, and that right parenthesis doesn't have a matching left parenthesis.

Here is an example: balanced?(')Hey!('). If we should ever have a negative value for parens, then we know that 
our left and right parentheses are reversed, and that this isn't a balanced string.

Further Exploration
There are a few other characters that should be matching as well. Square brackets and curly brackets normally 
come in pairs. Quotation marks(single and double) also typically come in pairs and should be balanced. Can you 
expand this method to take into account those characters?
=end
