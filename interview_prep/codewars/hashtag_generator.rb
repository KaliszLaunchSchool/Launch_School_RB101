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
- if the string is empty, return false, 
- Clean up the string
  - Split into an array of words (split at every space)
  -Iterate through the array
    - Capitalize each word
    - Join the words back into a string without spaces, with a # at the beginning
    - return the string
      - if the char count >= 140,
      - otherwise, return the string
=end

def generateHashtag(string)
 
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
