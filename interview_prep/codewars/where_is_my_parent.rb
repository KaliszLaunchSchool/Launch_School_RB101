=begin
48. Where is my parent!?(cry)
(https://www.codewars.com/kata/58539230879867a8cd00011c/train/ruby )
Where's my parent?
Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great 
fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby 
and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".

Problem
- Arrange a string Alphabetically, and uppercase letters followed by lowercase letters
Rules: only letters

Algo
- Create a method which takes a string
- Create an array of individual characters of the string
  - Sort in alphabetical order
    - iterate through the individual letters
    - If a char is uppercase, send to the beginning of its group
- Join the subarrays, join the sorted array, and return

=end

def find_children(str)
  str.chars.sort_by {|letter| [letter.downcase, letter]}.join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
