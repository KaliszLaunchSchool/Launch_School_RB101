=begin
Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

ex:
{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# Problem
- Create a hash
- Counts how many times each letter occurs in a string
- Capital letters are different letters than lowercase
- Input: String
- Output: Hash

# Examples
statement = "The Flintstones Rock"

ex:
{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# Data
String 
Array
Hash

# Algorithm
- Initiate a hash
- Break up string into characters (array)
- Sort array
- Delte spaces
- Iterate through array
  - Make subarrays for each grouping of same letters
  - Count how big each sub array is
- Create hash with key=letter, value=length of subarays

# Code
=end

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
p result