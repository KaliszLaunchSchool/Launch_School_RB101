=begin
Given 2 strings, your job is to find out if there is a substring that appears in both 
strings. You will return true if you find a substring that appears in both strings, and 
false if not. A substring is longer than 1 character.

# Problem 
- Create a method which accepts 2 strings
- Check to see if the strings contain a common substring
  - Return true if there is one, otherwise false
- substring = longer than 1 character
- If either given string is ' ', return false
- case insensitive

Input: 2 strings
Output: Boolean

# Algo
- Create a method which accepts 2 strings
- Downcase both strings for comparison
- Create arrays to hold the substrings
- Create all potential consecutive substrings of each (must be longer than 1 char)
  - From 0 to the size of the string, create arrays starting at 2 chars and increasing until the substring's size
  - Send to the appropriate array
- Compare to see if any substrings are the same 
  - if so, return true
  - if not, return false
=end

def substring_test(string_1, string_2)
  return false if string_1 == ' ' || string_2 == ' '
  string_1.downcase!
  string_2.downcase!
  substrings_1 = create_substrings(string_1)
  substrings_2 = create_substrings(string_2)
  substrings_2.each do |word|
    if substrings_1.include?(word)
      return true
    end
  end
  false
end

def create_substrings(string)
  substrings = []
  size = string.size - 1
  counter = 0
  loop do
    counter.upto(size) do |index|
      substrings << (string[counter..index])
   end
   counter += 1
   break if counter == size
  end
  substrings.delete_if {|string| string.empty? || string.size == 1}
  substrings
end

puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true




















=begin

Problem
- Given 2 strings
- Check if there is a substring (a string longer than 2 chars) that appears in both strings
- Return true if there is, false if there is not
- Must account for case - do not want case sensitivity

Input: 2 strings
Output: boolean

Data: string, boolean, array

Algo
- Create a method which accepts 2 parameters (strings)
- Downcase each string in order to compare correctly
- Split each string into all possible substrings
  - Initiate a result array
  - Iterate through the string from 0 to string size
  - Split strings from 0 to string size, and string size to 0
  - Add new strings only to the result array
- Compare the 2 result arrays
  - If there is 1 string that matches, return true
  - Else, return false


def substring_test(string_1, string_2)
  string_1.downcase!
  string_2.downcase!
  substrings_1 = split_into_substrings(string_1)
end

def split_into_substrings(string)
  array_of_substrings = []
  split_num = 1
  size_of_string = 
  loop do
    string.split(//,split_num).each {|subarray| array_of_substrings << subarray}
    split_num += 1
    break if split_num == string.size
  end
  p array_of_substrings
end

substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true


=begin
  loop do 
    array_of_substrings << string[index..string_end]
    index += 1
    break if (index + 1) == string_end
  end
  loop do 
    index = 0
    array_of_substrings << string[index..string_end]
    string_end -= 1
    break if (index + 1) == string_end
  end
=end