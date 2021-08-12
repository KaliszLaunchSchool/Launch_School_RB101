=begin
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner 
letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will 
be sorted alphabetically

Requirement
return a string where:

the first and last characters remain in original place for each word
characters between the first and last characters must be sorted alphabetically
punctuation should remain at the same place as it started, for example: shan't -> sahn't
Assumptions

words are seperated by single spaces
only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
special characters do not take the position of the non special characters, for example: -dcba -> -dbca
for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
ignore capitalisation

scramble_words('professionals') == 'paefilnoorsss' 'The first and last letters of a word should reamin in place with the inner letters sorted')
scramble_words('i') == 'i', 'Must handle single charater words')
scramble_words('') == '', 'Must handle empty strings')
scramble_words('me') == 'me', 'Must handle 2 charater words')
scramble_words('you') == 'you', 'Must handle 3 charater words')
scramble_words('card-carrying') == 'caac-dinrrryg', 'Only spaces separate words and punctuation should remain at the same place as it started')
scramble_words("shan't") == "sahn't", 'Punctuation should remain at the same place as it started')
scramble_words('-dcba') == '-dbca', 'Must handle special character at the start')
scramble_words('dcba.') == 'dbca.', 'Must handle special character at the end')
scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth.", 'Must handle a full sentence')

# Problem
- Create a method which accepts 1 string of characters
- keep the first and last letter the same in each word, but alphabatize the middle letters
- special characters remain in place

Input: string
Output: string

# Algo
- Create a method which accepts 1 parameter (string)
- Split the string so that each word is its own element in aan array
- Iterate through the array
  - For each word: create a method which keeps the first and last letter in place, alphabatizes middle letters (helper method?)
    - Split the word into an array of characters
      - remove any non-alphabetical characters, and store with their indexes
      - pop the first and last characters off of the array and store in variables with their indexes
      - sort the rest of the letters alphabetically
      - put firstt and last chars back
      - put non-alphabetical chars back
    - Return the rearranged word
  - Join the array back into a string of word(s)
=end

def scramble_words(words)
  scrambling(words)
end

def scrambling(words)
  words.chars.each_with_index do |char|
    
  end
end

scramble_words('professionals') == 'paefilnoorsss' 
# scramble_words('i') == 'i'
# scramble_words('') == ''
# scramble_words('me') == 'me'
# scramble_words('you') == 'you'
# scramble_words('card-carrying') == 'caac-dinrrryg'
# scramble_words("shan't") == "sahn't"
# scramble_words('-dcba') == '-dbca'
# scramble_words('dcba.') == 'dbca.'
# scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."