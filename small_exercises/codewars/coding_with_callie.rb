=begin
Write a method that takes a string as an argument and groups the number of time each character appears in the string as a hash 
sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.

For example:

get_char_count("Mississippi") => {4=>["i", "s"], 2=>["p"], 1=>["m"]}
get_char_count("Hello. Hello? HELLO!!") => {6=>["l"], 3=>["e", "h", "o"]}
get_char_count("aaa...bb...c!") => {3=>["a"], 2=>["b"], 1=>["c"]}
get_char_count("aaabbbccc") => {3=>["a", "b", "c"]}
get_char_count("abc123") => {1=>["1", "2", "3", "a", "b", "c"]}

# Problem
- Write a method which takes a string
- Chaaracters = a-z and 0-9
- Finds the number of times each character appears
  - Sort the number of times the character appears as a hash 
    - Key == number of occurances (highest to lowest)
    - Values == characters (sorted alphabetically)
Rule: spaces, special chars, case is ignored (lowercase only)

Input: string
Output: hash
Other: Arrays, integers

# Algorithm
- Initate a result hash to count the characters and their occurances 
- Split the string into characters
  - downcase the characters, 
  - delete special characters and spaces (only keep letters and numbers)
  - Create a comparison array of unique characters
  - Iterate through the unique characters array, and compare it to the original to get the count
    - Add that to the hash
- Count the times each character occurs and add to the hash once the counting is complete 
  - Sort the hash by descending characters (highest to lowest)
  - Iterate through the hash to sort the value arrays alphabetically 
=end

def get_char_count(string)
  results = {}
  clean_array = string.downcase.gsub(/[^a-z0-9]/, '').chars
  uniq_array = clean_array.uniq
  uniq_array.each do |char|
    char_count = clean_array.count(char)
    if results.include?(char_count)
      results[char_count] << char
    else
      results[char_count] = [char]
    end
  end
  results = results.sort {|a, b| b <=> a}
  results.map do |_key, value|
    value.sort!
  end
  results.to_h 
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}