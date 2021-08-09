=begin
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that 
has alphabetic characters only (both vowels and consonants) and no spaces, return the length of the longest vowel substring. Vowels 
are any of aeiou.

solve("codewarriors") == 2
solve("suoidea") == 3
solve("iuuvgheaae") == 4)
solve("ultrarevolutionariees") == 3
solve("strengthlessnesses") == 1
solve("cuboideonavicuare") == 2
solve("chrononhotonthuooaos") == 5
solve("iiihoovaeaaaoougjyaw") == 8

# Problem
- Given a lowercase string of all alphabetic characters without spaces, find the length of the longest vowel substring

Input: string
Output: integer

# Algo
- Create a method which accepts 1 parameter (string)
- Divide the string into an array of vowel substrings (substrings with only a, e, i, o, u)
  - Initiate an empty array
  - Split the string into subarrays which are not AEIOU
- Find the longest substring
  - Iterate through the substrings, select the substring with the largest size
- Return the length of the longest substring
=end

def solve(string)
  vowel_substrings = string.split(/[^aeiou]/)
  substring_sizes = []
  vowel_substrings.each do |substring|
    substring_sizes << substring.size
  end
  substring_sizes.sort[-1]
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8