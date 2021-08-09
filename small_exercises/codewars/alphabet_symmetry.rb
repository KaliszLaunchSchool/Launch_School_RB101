=begin
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also 
in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 
4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For 
example,

solve(["abode","ABc","xyzD"]) == [4,3,1]
solve(["abide","ABc","xyz"]) == [4,3,0]
solve["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"] == [6,5,7]
solve["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

# Problem
- Given an array of words, iterate through each word and identify which letters are in their correct alphabetical positions
- Count the number of letters are correct, and return that count for each word as an array

Input: Array of strings
Output: Array of integers

# Algo
- Initiate a constant hash, an alphabet array with each letter of the alphabet with its corresponding position as the value 
  - Caps and lowercase
- Create a method which accepts one parameter (an array)
- Initialize a correct position count variable
- Initialize an empty results array
- iterate through the array, for each word, check to see if it's index +1 matches the hash value in the constant
  - If it matches, add 1 to the correct position count
- Add the count to the results array
- Return the results array

=end

ALPHABET = {
            'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4,'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k' => 11,
            'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18, 's' => 19, 't' => 20, 'u' => 21,'v' => 22, 
            'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26, 'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'E' => 5, 'F' => 6,'G' => 7,
            'H' => 8, 'I' => 9, 'J' => 10, 'K' => 11, 'L' => 12, 'M' => 13, 'N' => 14, 'O' => 15, 'P' => 16, 'Q' => 17,'R' => 18,
            'S' => 19, 'T' => 20, 'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25, 'Z' => 26
          }

def solve(array)
  results = []
  array.each do |word|
    correct_position_count = 0
    word.chars.each_with_index do |letter, index|
      if (index + 1) == ALPHABET[letter]
        correct_position_count += 1
      end
    end
    results << correct_position_count
  end
  results
end 

p solve(["abode","ABc","xyzD"]) #== [4,3,1]
p solve(["abide","ABc","xyz"]) #== [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) #== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) #== [1, 3, 1, 3]