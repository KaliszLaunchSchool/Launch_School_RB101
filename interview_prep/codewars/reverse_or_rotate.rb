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
- Create a method that accepts 2 parameters: a string of digits and a size
- Split the string into chunks of the given size (if there are remaining digits after the split that are less than size, ignore them)
  - If you take the cube of each digit of the chunk, sum those and that number divided by 2 is 0
    - Reverse the chunk
  -Otherwise, rotate the chunk to the left by 1 position (first digit becomes the last)
- Take the modified chunks, combine them, return that string
- Return "" if size <= 0, str is empty, or if size > length of original string

# Examples
"733049910872815764", 5 
73304 99108 72815 764
33041 91089 28157 --> "330479108928157"
"330479108928157"
=end

def revrot(string, sz)
  return '' if sz <= 0 || string == '' || sz > string.size
  chunks = []
  index = 0
  loop do
    unless string[index, sz] == '' || string[index, sz].size < sz
      chunks << string[index, sz]
    end
    index += sz + 1
    break if index > string.size
  end

  chunks = chunks.map do |chunk| 
    if reverse?(chunk) 
      chunk.reverse
    else
      chunk.chars.rotate.join
    end
  end
  p chunks.join
end

def reverse?(chunk)
  nums = [] 
  chunk.chars.each {|digit| nums << digit.to_i ** 3}
  if nums.sum % 2 == 0
    return true
  else 
    return false
  end
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
