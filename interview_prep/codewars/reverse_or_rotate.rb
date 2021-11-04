=begin
51. Reverse or rotate?
(https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991)

Reverse or rotate?
The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz 
(ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to 
the left by one position. Put together these modified chunks and return the result as a string.

If

sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".

Examples:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> "" 
revrot("563000655734469485", 4) --> "0365065073456944"

# Problem
- Create a method which accepts 2 parameters (string of digits, an integer)
- Split rhe string into chunks of the integer's size
- The chunks should be modified as follows:
  - If the sum of the cube of every digit in the chunk % 2 = 0
    - Reverse that chunk
  - Otherwise, rotate the chunk to the left by one
- Put the chunks together and return the result

If the integer or size of the chunk is <=0 or if the string is empty return ""
If the integer is greater than the length of the string (impossible to chunk of the integer's size), return ""

# Example
revrot("123456987654", 6) --> "234561876549"
123456: cubes = 1 8 27 64 125 216 = 441, so rotate == 234561
987654: 729 512 343 216 125 64 = 1989 so rotate = 876549

revrot("123456987653", 6) --> "234561356789"
123456: cubes = 1 8 27 64 125 216 = 441, so rotate == 234561
987653: 729 512 343 216 125 27 = 1952 so reverse = 876549

revrot("66443875", 4) --> "44668753"
4466

# p revrot("664438769", 8) == "67834466"
66443876 9 == rotate and '' ==> 67834466

# Data
String
Integer
Array

# Algorithm
- Create a method which accepts 2 parameters (string, integer)
- check to see if the int is bigger than the string size
  - if so, return ""
- Split the string into an array with strings the size of the integer
  - Split the string into characters
- Iterate through the array
  - If the string size is less than the integer, return ""
  - Otherwise, Call the sum of the cubes
    - If the sum of the cubes is even, reverse the chunk
    - Otherwise, rotate the chunk to the left by 1
- Join the array
- Return the string

Helper method
- turn the string into integers
- cube the integers
- sum the cubes
=end

def revrot(string, int)
  return "" if int > string.length
  
  ary_of_nums = string.chars
  ary_of_chunks = []
  str = ""
  ary_of_nums.each do |num|
    if str.length < int
       str << num
    else
      ary_of_chunks << str
      str = ""
    end
  end
  ary_of_chunks
end


# p revrot("1234", 0) == ""
# p revrot("", 0) == ""
# p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
# p revrot("123456987654", 6) == "234561876549"
# p revrot("123456987653", 6) == "234561356789"
# p revrot("66443875", 4) == "44668753"
# p revrot("66443875", 8) == "64438756"
# p revrot("664438769", 8) == "67834466"
# p revrot("123456779", 8) == "23456771"
# p revrot("", 8) == ""
# p revrot("123456779", 0) == ""
# p revrot("563000655734469485", 4) == "0365065073456944"
