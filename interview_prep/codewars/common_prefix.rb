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
- Take the first string, split it into characters, and iterate through it
 - If the character matches the character at the same index of the other strings, add that char to a result string and cont iterating
 - Otherwise, break, and return the result string
=end

def common_prefix(array)
  letters_at_each_index = []
  array[0].chars.each_with_index do |char, index|
    array.each do |string|
      if string[index] == char 
        letters_at_each_index << [char]
      end
    end
  end
p letters_at_each_index
end

puts common_prefix(["flower", "flow", "flight"]) == "fl"
# puts common_prefix(["dog", "racecar", "car"]) == ""
# puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# puts common_prefix(["throne", "dungeon"]) == ""
# puts common_prefix(["throne", "throne"]) == "throne"