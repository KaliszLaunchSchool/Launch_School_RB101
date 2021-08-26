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
- Create a method which accepts a string
- Find the size of the original string
- Create a return array [string, multiplier]
- Initiate a count variable
- take the first letter of the string * size of the string divided by 1
  - if that = original string, return the substring and the size
  - else, take the first 2 letters of the string * size of original string divided by 2
  - continue on until count == string size
- return the 
=end

def f(string) 
  size = string.size
  result = [string, 1]
  count = 1
  until count == size do
    substring = string[0..(count - 1)]
    created_string =  substring * (size / count)
    if created_string == string
      result = [substring, size / count]
      break
    else 
      count += 1
    end
  end
  result 
end

p f("ababab") == ["ab", 3] 
p f("abcde") == ["abcde", 1]
p f("abcdeabcde") == ["abcde", 2]
p f("aaaaa") == ['a', 5]

def repeated_substring_pattern(string)
  substrings = find_substrings(string)
  repeated = substrings.select do |sub|
    substrings.count(sub) >= 2
  end
  num = 1
  loop do 
    repeated.each do |sub|
      multiplied_sub = sub * num
      return true if multiplied_sub == string
    end
    num += 1
    break if num > string.size
  end
  false
end

def find_substrings(string)
  substrings = []
  1.upto(string.size - 1) do |length|
    string.chars.each_cons(length) {|sub| substrings << sub.join } 
  end
  substrings
end
