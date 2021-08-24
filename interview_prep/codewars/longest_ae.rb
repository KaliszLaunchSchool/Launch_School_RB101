=begin
# Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

# As an example, if the input was “aaee”, the substring (aaee) length would be 4.
# For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

# If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.

# Problem
- Create a methos which takes 1 parameter (string)
- Find the longest substring which contains: 2 e's and 2 a's
  ** Exactly 2 of each 
- If input string is empty, return -1
- If no string with 2 a's and 2 e's, return -1
- the e's and a's dont have to begin/end the string

# Example
"pteromerhanophobia" ==> 18 (whole string)
"secaundogenituareabb" ==> secaundogenituar

# Algo
- Create a method which accepts 1 parameter (string)
* Find all consecutive substrings 
- Iterate through the substrings
  - Select all substrings that contain EXACTLY 2 'a's and 2 'e's
- Find the longest one
- Return length

=end

def longest_ae(string)
  substrings = find_substrings(string)
  a_and_e_subs = substrings.select do |substring|
    substring.count('a') == 2 && substring.count('e') == 2
  end
  return -1 if a_and_e_subs.empty?
  longest = a_and_e_subs.max_by {|sub| sub.size}
  longest.size
end

def find_substrings(string)
  substrings = []
  1.upto(string.size) do |length|
    string.chars.each_cons(length) {|subs| substrings << subs.join}
  end
  substrings
end

p longest_ae("aaee") == 4
p longest_ae("babanctekeaa") == 10
p longest_ae("xenoglossophobia") == -1
p longest_ae("pteromerhanophobia") == 18
p longest_ae("johannisberger") == -1
p longest_ae("secaundogenituareabb") == 16