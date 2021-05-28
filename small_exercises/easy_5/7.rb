=begin
Letter Counter (Part 2)
Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. 
For instance, the length of "it's" is 3, not 4.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

# Problem
- Modify your method to exclude non-letters when determining word size

# Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

# Data
Array
String
Hash

# Algo
- 
=end

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def add_to_hash(word, word_size_count)
  size = word.size
  if word_size_count.include?(size)
    word_size_count[size] += 1
  else
    word_size_count[size] = 1
  end
end

def word_sizes(text)
  word_size_count = {}
  text.split(/ /).each do |word|
    if word.chars.all?{|character| ALPHABET.include?(character)}
      add_to_hash(word, word_size_count)
    else
      word = word.chars.select! {|letter| ALPHABET.include?(letter)}
      word.join
      add_to_hash(word, word_size_count)
    end
  end
  word_size_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

=begin
LS solution

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

Discussion
The only change we need to make to this method is to make sure that it does not count non-letter characters 
in determining word sizes. This is easy to do: we simply delete all non-letters from each word before we 
compute the size.

Further Exploration
If you haven't encountered String#delete before, take a few minutes to read up on it, and its companion 
String#count (you need to read about #count to get all of the information you need to understand #delete).
=end
