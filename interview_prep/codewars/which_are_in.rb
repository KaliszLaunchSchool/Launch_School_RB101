=begin
Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the 
strings of a1 which are substrings of strings of a2.

Example 1:
a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

Example 2:
a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

Notes:
Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.
Beware: r must be without duplicates.

# Problem
- Given 2 arrays, check to see if a1 is a substring in any of the strings in array 2
- If so, add to results array
- Sort the results array

# Example
a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

# Data: string, array

# Algo
- Create a method which accepts 2 parameters(a1 and a2)
- Initiate a results array
- Create all substrings of array 2 (subs)
- Iterate through a1
  - Check to see if subs includes the current string
    - If so, add to results

=end

def in_array(a1, a2)
  results = []
  all_subs = []
  a2.each do |string|
    all_subs += find_all_substrings(string)
  end
  all_subs
  a1.each do |string|
    if all_subs.include?(string)
      results << string
    end
  end
  results.sort
end

def find_all_substrings(string)
  subs = []
  size = string.length 
  1.upto(size) do |length|
    string.chars.each_cons(length) do |sub|
      subs << sub.join
    end
  end
  subs
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
in_array(a1, a2) #, ["arp", "live", "strong"])
a1 = ["tarp", "mice", "bull"]
in_array(a1, a2) #, [])