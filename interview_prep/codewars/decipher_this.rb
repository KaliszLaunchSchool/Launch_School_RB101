=begin
You are given a secret message you need to decipher. Here are the things you need to 
know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special characters used, only letters and spaces

Examples

decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'

# Problem
- Given a string, find the character code which corresponds to tthe number at the 
beginning of each word. switch the 2nd letter and the last letter

# Example
'72olle 103doo 100ya' ==> 'Hello good day'
'82yade 115te 103o' ==> 'Ready set go'

# Data: String, array

# Algo
- Split the string into an array of words
- Iterate through each word, find the number at the beginning of each word
- Replace the number with its corresponding character
- Swap the 2nd letter and the last letter
- Return that string

=end

ASCII = {
  'A': 65, 'B': 66, 'C': 67, 'D': 68, 'E': 69, 'F':70, 'G': 71, 
  'H': 72, 'I': 73, 'J': 74, 'K': 75, 'L': 76, 'M': 77, 'N': 78,
  'O': 79, 'P': 80, 'Q': 81, 'R': 82, 'S': 83, 'T': 84, 'U': 85,
  'V': 86, 'W': 87, 'X': 88, 'Y': 89, 'Z': 90, 'a': 97, 'b': 98,
  'c': 99, 'd': 100, 'e': 101, 'f': 102, 'g': 103, 'h': 104, 
  'i': 105, 'j': 106, 'k': 107, 'l': 108, 'm': 109, 'n': 110, 
  'o': 111, 'p': 112, 'q': 113, 'r': 114, 's': 115, 't': 116, 
  'u': 117, 'v': 118, 'w': 119, 'x': 120, 'y': 121, 'z': 122
  }

NUMS = ('0'..'9').to_a

def decipher_this(sentence)
  new_sentence = []
  sentence.split.each do |word|
    number = []
    word = word.chars
    word.each do |char|
      number << char if NUMS.include?(char)
    end
    first_letter = ASCII.key(number.join.to_i).to_s
    loop do
      break unless NUMS.include?(word[0])
      word.shift
    end
    word.unshift(first_letter)
    word[1], word[-1] = word[-1], word[1]
    new_sentence << word.join
  end
  new_sentence.join(' ')
end

p decipher_this("72olle 103doo 100ya")
p decipher_this("82yade 115te 103o")