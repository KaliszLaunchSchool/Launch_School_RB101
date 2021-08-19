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

=begin
# Problem
- Create a method which iterates through an array of letters as input
- Returns the letter that is missing from the array
- Rules: exactly one letter missing, lenth of the array will be at least 2, always one case of letters, always a valid array
- Can the missing letter be at the beginning/end of the array?

# Examples
# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'
# p find_missing_letter(["a","b","c","d","f"]) == "e"
# p find_missing_letter(["O","Q","R","S"]) == "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"
# p find_missing_letter(["b","d","e"]) == "c"

Input: array of alphabet with one letter missing
Output: string

# Algo
- Create a method which accepts 1 parameter (array)
- Create a comparison array
  - take the first letter of the array, and the last letter of the array and create a range
  - Convert the range into an array
- Subtract the missing letter array from the comparison array
- Should result in a 1 letter array, return that as a string
=end

def find_missing_letter(missing_letter_arr)
  comparison_arr = (missing_letter_arr[0]..missing_letter_arr[-1]).to_a
  (comparison_arr - missing_letter_arr).first
  
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"