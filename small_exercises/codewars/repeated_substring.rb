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
- 

=end
=begin
def f(string)
  results = ['', 0]
  subarrays = string.chars
  #loop do
    if subarrays.all?(subarrays[0])
      results = [subarrays[0], subarrays.size]
    else
      size_of_subs
      subarrays.map.with_index do |substring, index|
        substring[index] = substring[index] + substring[index + 1]
      end
      p substring
    end
  #end
end
=end

def f(string)
  size_of_substring = 1 
  index = 0
  size_of_string = string.size
  if size_of_string.even?
    loop do
      substring = string[index, size_of_substring]
      if substring * size_of_string == string
        return [substring, size_of_string]
        break
      else
        size_of_substring += 1
        size_of_string /= 2
      end
    end
  else
    p 'odd'
  end
end

p f("ababab") == ["ab", 3] 
p f("abcde") == ["abcde", 1]
p f("abcdeabcde") == ["abcde", 2]
p f("aaaaa") == ['a', 5]