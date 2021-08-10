=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t 
repeated k times. The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or 
an array (in Ruby and JavaScript) [t, k]

Example #1:

for string

s = "ababab"
the answer is

["ab", 3]
Example #2:

for string

s = "abcde"
the answer is

because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

# Problem
- Fot a given string, find the minimum substring, and the number of times it must be repeated to create that string

Input: string
Output: array with a string and an integer

# Algo
- Create a method which accepts 1 parameter (string)
- Create an empty results array
- Find the substring that is repeated within the string
  - Find the size of the original string
  - Create a substring from 0..0, 0..1
    - if size is 1, concatinate the string string.size times and compare the new string with original string
    - if size is 2, concatinate the string string.size/2 times, etc
  - Push to the results array
- Determine how many times it needs to be repeared to create the original string
  - Add to results array
- Return results array
=end

def f(string)
  results = []
  size = 
end

p f("ababab") == ["ab", 3] 
p f("abcde") == ["abcde", 1]
p f("abcdeabcde") == ["abcde", 2]