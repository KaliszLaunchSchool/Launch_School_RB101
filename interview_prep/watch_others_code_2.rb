=begin
Given an array of strings made only from lowercase letters, return an array 
of all characters that show up in all strings within the given array 
(including duplicates). For example, if a character occurs 3 times in all 
strings but not 4 times, you need to include that character three times in 
the final answer.

# Problem
- Given an array of strings, iterate through each of the characters of
each of the strings
- Sort the characters
- Compare characters
- Add any that are the same to a results array

Input: Array
Output: new array

Array, string

Algo
- Create an empty results array
- Given an array of strings
  - Split the first string into its respective characters
  - Iterate through the first string's characters
  - Check if all of the strings in the original array include that character
    - If yes, add it to the results array
      - Delete one instance of the common character from each string
    - If not, continue the iteration
- Return the results array



def common_chars(array_of_strings)
  results = []
  comparison_string = array_of_strings[0]
  comparison_string.chars.each do |character|
    if array_of_strings.all?{|string| string.include?(character)}
      results << character
    end
    array_of_strings.each {|string| string.delete!(character)}
  end
  puts results
  results
end
=end

def common_chars(array_of_strings)
  results = []
  characters_to_compare = array_of_strings[0].chars
  words_left_in_string = array_of_strings
  words_left_in_string.delete(array_of_strings[0])
  loop do
    comparison_letter = characters_to_compare.shift
      if array_of_strings.all?{|string| string.include?(comparison_letter)}
        results << comparison_letter
        words_left_in_string.each {|string| string.slice!(comparison_letter)}
      end
      array_of_strings
      words_left_in_string
    break if characters_to_compare.empty?
  end
    results
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []

=begin
Input: an array of lowercaase strings
Output: an array of every character that appears in all of the strings
  - If a character appears mult times in each strings, then the 
  return array should contain that number of elements

Algo
  - Set chars equal to the characters of the first element 
  (remove the first element from the array)
  - Iterate through the characters (with select)
    - Iterate through the words in the array
    - Check if all the words contain the character
      - If they do, block should return true
      - Remove one of that character from the string
=end

def common_chars(array)
  array = array.map { |word| word} #So we don't mutate the original array

  chars = array.shift.chars

  chars.select do |char|
    array.all? { |word| word.sub!(char, "") }
  end
end

=begin
Given an array of strings made only from lowercase letters, return an array 
of all characters that show up in all strings within the given array 
(including duplicates). For example, if a character occurs 3 times in all 
strings but not 4 times, you need to include that character three times in 
the final answer.

# Problem
- Given an array of strings, return an array of all chars that show up in each of the strings
- If a char shows up x2 in each string, it needs to be returned x2 times

['bella', 'label', 'roller']
b e l l a, l a b e l, r o l l e r ==> e, l, l 

['cool', 'lock', 'cook']
c o o l, l o c k, c o o k ==> c, o 

Input: array of words
Output: array of common letters

# Ago
- Given a string of words
- Use the first word's chars as comparison
- Iterate through each string
  - if every string contains that letter
    ** remove one instance of the letter from each string
    - add the letter to a results array
- return the results array

=end

def common_chars(array)
  results = []
  compare_letters = array[0].chars.each do |letter|
    if array.all? {|word| word.match?(letter)}
      results << letter
      array = array.map { |word| remove_letter(word, letter) }
   end
  end
  p results
end

def remove_letter(string, letter)
  string.sub(letter, '')
end


p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []