=begin
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

# Problem
- Create a method which accepts a string
- # counts as backspace 
- Return a cleaned string
- Returned string can be empty

# Input: string
# Output: string

# Algo
- Create a method which accepts a string
- Break the string into characters
- Iterate through the array
  - If the next char is #, delete that character
  - Restart the iteration until the string does not contain any more "#" chars (clean string)
=end

def clean_string(str)
  result = []
  str.chars do |char|
    if char == '#'
      result.pop
    else 
      result << char
    end
  end
  result.join
end
    
  
p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""

