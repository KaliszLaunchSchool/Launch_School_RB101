=begin
# Find the missing letter
# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
#
# You will always get a valid array and there will always be exactly one letter be missing. 
# The length of the array will always be at least 2. 
# The array will always contain letters in only one case.

# Example:
#
# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'
# p find_missing_letter(["a","b","c","d","f"]) == "e"
# p find_missing_letter(["O","Q","R","S"]) == "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"
# p find_missing_letter(["b","d","e"]) == "c"

# Problem 
- Write a method which takes 1 parameter (array of strings)
- Always exactly 1 letter missing
- Return the missing letter
Rules: length of array always 2, array will always contain letters in the same case
- Missing element will not be the first or last element

Input: array of strings
Output: string

# Algo
- Initiate an aplhabet constant with upper case and lower case alphabet (maybe?)
- Create a method which takes 1 parameter (array)
- Create a new array from the first element in the given array to the last, should be the whole alphabet
- Compare the given array with the new array
- Return the letter of the new array that is different
=end

def create_array(arr)
  (arr[0]..arr[-1]).to_a
end

def find_missing_letter(arr)
  full_arr = create_array(arr)
  (full_arr - arr).first
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

# look up Integer#chr and string#ord