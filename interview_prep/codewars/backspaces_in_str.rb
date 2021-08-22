=begin
41. Backspaces in string
(https://www.codewars.com/kata/5727bb0fe81185ae62000ae3/train/ruby)

Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

# Problem
- Create a method which takes a string of chars and #
- Use # like a backspace
- Return the new string

# Algo
- Create a method which takes a string
- Create a results array
- Iterate through the given string's characters
  - If the char is a "#", pop a character off the results array
  - If the char is anything else, add that char to the results array
- join the results array
=end

def clean_string(string)
  results = []
  string.chars.each do |char|
    if char == '#'
      results.pop
    else 
      results << char
    end
  end
  results.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""

