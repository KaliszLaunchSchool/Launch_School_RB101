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

# def revrot(string, int)
#   return "" if int > string.length || int == 0

#   ary_of_nums = string.chars
#   ary_of_chunks = into_chunks(ary_of_nums, int)

#   mutated_chunks = []
  
#   ary_of_chunks.each do |chunk|
#     sum = sum_of_cubes(chunk)
#     if sum.even?
#       chunk.reverse!
#     else
#       chunk = rotate_str(chunk)
#     end
#     mutated_chunks << chunk
#   end
#   mutated_chunks.join
# end

# def into_chunks(ary_of_nums, int)
#   ary_of_chunks = []
#   str = ""
#   ary_of_nums.each do |num|
#     if int > str.length
#       str << num
#     else
#       ary_of_chunks << str
#       str = ""
#       str << num
#     end
#   end
#   ary_of_chunks << str if str.length == int
#   ary_of_chunks
# end

# def sum_of_cubes(str)
#   integers = str.chars.map do |i| 
#     i = i.to_i
#     i = i * i * i
#   end
#   integers.sum
# end

# def rotate_str(chunk)
#   nums = chunk.chars
#   first_char = nums.shift
#   nums << first_char
#   chunk = nums.join
# end


=begin
The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of 
the initial string) of size sz (ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, 
reverse that chunk; otherwise rotate it to the left by one position. Put together these modified 
chunks and return the result as a string.

If

sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence 
return "".

# Problem
- Create a mthod which takes a string of digits and chunks it into the size indicated
- Looking at the chunk:
  - If the sum of the cubes of its digits % 2 == 0
    - Reverse the chunk
  - Else, rotate it to the left by 1 
  - If chunks are left over that aren't the correct size, drop them
- Put the chunks back together and return a string
- Return '' if string is empty, or the size is greater than string elength or side <=0

# Example
"733049910872815764", 5 == "330479108928157"
73304 99108 72815 764

# Data
Integer, string, array

# Algo
- Split the string into chunks of the proper size
- Itereate through the chunks
- Ignore any chunks which are not the appropriate size
- Helper method: Find the sum of the cubes of the digits
- If even
  - Reverse the chunk
- Otherwise, 
 - rotate to the left by onee
=end

def revrot(string, size)
  return '' if size <=0  || string.empty? || string.length < size
  new_string = ''
  array = []
  first = 0
  last = size - 1 
  loop do
    break if last > string.length - 1 
    array << string[first..last]
    first = last + 1
    last = first + size - 1
  end
  array = array.map do |string|
     if sum_of_cubes(string) % 2 == 0
      string = string.reverse
     else
      string = string.chars
      last_char = string.shift
      string.push(last_char)
      string = string.join
     end
  end
  array.join
end

def sum_of_cubes(string)
  string = string.chars.map do |char|
    char = char.to_i
    char = char * char * char
  end
  string.sum
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
p revrot("563000655734469485", 4) == "0365065073456944"
