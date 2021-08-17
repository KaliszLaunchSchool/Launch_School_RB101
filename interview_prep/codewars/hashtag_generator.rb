=begin
Generate a 'hastag'

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

# Problem
- Create a method which takes 1 parameter (string)
- If the string is longer than or equal to 140 chars, or if the string is empty, return false
  - Spaces don't count as 'chars' for the chars count
  - # doesnt count as a char for the char count
- Otherwise, return a string with the original words capitalized and combined without spaces, with a # at the start
  - word: letters a-z with spaces in between individual words

Input: string
Output: either boolean, or a string

# Algo
- Create a method which accepts 1 parameter(string)
- if the string is empty or includes only spaces), return false
- Clean up the string
  - Split into an array of words (split at every space)
  - Count the size of each word, and sum them all
    - if the char count >= 140, return false, otherwise continue
  -Iterate through the array
    - Capitalize each word
    - Join the words back into a string without spaces, with a # at the beginning
    - return the string
=end

def generateHashtag(string)
  string = check_for_falses(string)
  return false if string == false

  array = string.split.map do |word|
    word.capitalize
  end
  new_string = array.join
  '#' + new_string
end

def check_for_falses(string)
  if string.empty? || string.chars.all?(' ')
    string = false
  elsif string.delete(' ').size >= 140
    string = false
  else 
    string
  end
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
