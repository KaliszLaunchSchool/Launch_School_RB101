=begin
Write a method to find the longest common prefix string amongst an array of strings. If 
there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

# Problem
- Create a method to find the lagest common prefex
- if there is not one, return an empty string
- all letters will be lowercase

Input: Array
Output: String

# Algo
- Create a method which accpets 1 parameter (array)
- Initiate a result string
- Initiate a check_letters array
- Iterate through the array with a counter 
  - If each string [0] is the same, add that character to the result array
- Cont iterate through arraay
- Break if string[0].all? == false
=end

def common_prefix(array)
  result = ""
  counter = 0
  
  loop do
    check_letters = []
    array.each do |word|
      check_letters << word[counter]
    end 

   if check_letters.all?(check_letters[0])
    result << check_letters[0] 
    counter += 1
    break if counter == array[0].size
   else
    break 
   end

  end
  result
end

puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"

=begin
# Problem
- Find the longest common prefix in an array of strings
- Return the prefix string

Input: Array of strings
Output: string

# Data: array, string

# Algo
- Iterate from 0 to the length of the smallest string in the array
- Using the index, check if the characters of each string in the array is the same
- If its the same, add that charaacter to a results array
- If its not, retrun the results array
=end

def common_prefix(array)
  result = []
  max_index = array.min_by {|string| string.size}.size
  (0...(max_index - 1)).each do |index|
    current_char = array[0][index]
    if array.all? { |str| str[index] == current_char }
      result << current_char 
    else
      return result.join('')
    end
  end
  result.join('')
end

puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"