=begin
44. Counting Duplicates 
(https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby)

Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than 
once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

# Problem
- Create a method which accepts 1 parameter (string)
- Count the number of characters which appear more than once
- Can be upper or lower case
= Can be numbers

# Algo
- Create a method which accepts 1 parameter (string)
- Initialzie a counter to 0
- Split the string into unique, downcased characters
- Iterate through the chars
  - Count the number of times each downcased char appears in the downcased string
  - if the string contains more than 1 of the same character, increment tthe counter
=end

def duplicate_count(string)
  counter = 0
  string = string.downcase
  chars = string.chars.uniq
  chars.each do |character|
    if string.count(character) > 1
      counter += 1
    end
  end
  counter
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
