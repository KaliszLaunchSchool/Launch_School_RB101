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
=end