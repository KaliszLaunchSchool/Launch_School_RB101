=begin
Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# Problem 
- Create a method which takes a string of words
  - Move the first letter of each word tto the end of the word
    - Append 'ay' to the end of that
* Capitalzation remains, punctuation is not touched

Iput: string of words
Output: string of manipulated words

pig_latin('Pig latin is cool') == "igPay atinlay siay oolcay"
Pig ==> igPay
latin ==> atinlay

# Algo
- Create a method which accepts 1 parameter
- Split the string into words (at spaces)
  - Iterate through each word
    - latanize
- Join that 
- Return our new string

  - Split into characters, moving index 0 to index -1
  - appending -ay
  
Check to see if a word is a word 
  - intitialize an alphabet
  - split the word into chars
    - if the word contains only alphabetical chars, return true
    - else, return false
=end

def latinize(string)
  array = string.chars.rotate
  array << 'ay'
  array.join
end

def word?(word)
  alpha = ('a'..'z').to_a
  results = []
  word.chars.each do |char|
    if alpha.include?(char.downcase)
      results << true
    else 
      results << false
    end
  end
  if results.all?(true)
    return true
  else
    false
  end
end

def pig_latin(string)
  results = []
  string.split.each do |word| 
    if word?(word) == false
      results << word
    else 
      results << latinize(word)
    end
  end
  results.join(' ')
end
  

p pig_latin('Pig latin is cool') == "igPay atinlay siay oolcay"
p pig_latin('Hello world !') == "elloHay orldway !"