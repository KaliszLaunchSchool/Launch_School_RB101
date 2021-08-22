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

=end

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