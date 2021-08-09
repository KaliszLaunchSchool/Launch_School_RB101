=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

# Problem
- Given a string of integers, find the number of odd substrings that can be formed from that string
- Must be substrings, cant take the first and last number and combine
- Single numbers count, the entire number counts

Input: String
Output: integer

# Algo 
- Create a method which accepts 1 parameter (string)
- Initiate a count variable, beginning at 0
- Iterate through the string
  - Break the string into substrings, first 1, then 2, etc until there is only 1 substring (put them into an array?)
  - turn the substring into an integer (or map through the array, transforming each into an integer)
  - check to see if the substring is odd
    - If so, increment count
- Return count
=end

def solve(number_string)
  number_of_odd_substrings = 0
  start_index = 0
  loop do
    end_index = 0
    loop do 
      if number_string[start_index..end_index].to_i.odd?
        number_of_odd_substrings += 1
      end
      end_index += 1
      break if end_index == number_string.size
    end
    start_index += 1
    end_index = start_index
    break if end_index == number_string.size
  end
  number_of_odd_substrings
end



p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
