=begin
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most 
occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy 
punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a 
text contains no words.

Examples:
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]
Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.

# Problem 
- Given a string of words (word = letters separated by spaces and optional (') but no other punctuation)
  - Return an array with the words top 3 words that appear most frequently
    - Descending order
    - If less than 3 words, return 2 or 1 strings respecitvely
  - Matches should be case insensitive

Input: string
Output: array of 3 or less strings

# Algo
- Create a method which accepts 1 parameter (string)
- initate a "results" array
- downcase the string
- split the string into each word (split at the spaces)
  - Create a comparison array with each unique word
  If the array size is 3
    - Iterate through the comparison array and return the top 2 counted words
  If the aarray size is 2
    - Iterate through the comparison array and return the top 1 counted word
  If the array size is 1 or less
    - Return an empty array
  Otherwise,
  - Iterate through the comparison array
    - count each word, for the first 3 words, just add to the array with their counts
    - Each word after, check to see if the count is greater than what is currently in the array
      - If it is greater, replace the smallest count in the array

  Helper method == compare counts


=end

def top_3_words(words)
  top_words_and_count = []
  words = words.downcase.split.map do |word|
    if word.scan(/[a-z']/).all?("'")
      word.gsub(/[^a-z]/, '')
    else
      word.gsub(/[^a-z']/, '')
    end
  end
  counting_array = words.uniq
  counting_array.each do |word|
    count = words.count(word)
    top_words_and_count << [count, word]
  end
  top_words_and_count = top_words_and_count.sort {|a, b| b <=> a}
  top_words = []
  top_words_and_count[0..2].each { |_int, str| top_words << str unless str == ''}
  top_words
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
