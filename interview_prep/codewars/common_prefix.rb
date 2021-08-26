=begin
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty 
string

All given inputs are in lowercase letters a-z.


# Problem
- Create a method which finds a common string which all of the strings begin with
- If no common string, return an empty string
- all letters will be lowercase, no spaces or special chars

puts common_prefix(["flower", "flow", "flight"]) == "fl"
- index 0 = f f f 
- index 1 = l l l 
- index 2 = o o i **  

# Algo
- Create a method which accepts an array of strings
    - Find the size of the smallest string (n)
- Iterate through the array n number of times
  - find the character at each string at index n, and push into a result array
- iterate through the results, and keep only the subarraays where each char is the same
- take one of each of those characters, and add it to a results string



def common_prefix(array)
  n = array[0].size
  letters_at_each_index = []
  n.times do |index|
    letters = []
    array.each do |word|
      letters << word[index]
    end
    letters_at_each_index << letters
  end
  same_letters = letters_at_each_index.select {|letters| letters.all?(letters[0])}
  result = ''
  same_letters.each {|letters| result << letters[0]}
  result
end

puts common_prefix(["flower", "flow", "flight"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"

# Chris' solution
def common_prefix(arr)
  base_chars = arr.first.chars
  
  base_chars.size.times do |index|
    unless arr.all? { |word| word[index] == base_chars[index] }
      return arr.first[0, index]
    end
  end
  
  arr.first
end
=end
=begin
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty 
string

All given inputs are in lowercase letters a-z.

# Problem
- Create a method which accepts an array of strings
- Check to see if the words have a common prefix
  - If so, return the prefix
  - if not, return an empty string

["flower", "flow", "flight"]) == "fl"
f f f
fl fl fl
flo flo fli ==> fl

Input: array of strings
Output: string

# Algo
- Create a method which accepts an array of strings
- Iterate through the initial word, checking to see if the prefex characters are the same as the other strings
  - If so, grow the length of the prefex you are checking
  - Otherwise, return the last prefix

=end

def common_prefix(array)
  return '' if array[0][0] != array[1][0]
  prefixes = []
  first_word = array[0]
  1.upto(first_word.size) do |prefix_size|
    prefix = first_word.chars.first(prefix_size).join
    prefixes[prefix_size - 1] = [prefix]
  end
  array.each_with_index do |word, index|
    1.upto(word.size) do |prefix_size|
      prefix = word.chars.first(prefix_size).join
      prefixes[prefix_size - 1] << prefix
    end
  end
  common_prefixes = prefixes.select { |array| array.all?(array[0])}
  common_prefixes[-1].first
end


p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"