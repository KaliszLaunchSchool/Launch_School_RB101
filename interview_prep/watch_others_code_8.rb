=begin
Problem 1: Longest Palindrome
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

# Problem
- Create a method that finds the length of the longest substring that is a palendrome, given a string of words
  - palindrome = string == string.reverse
- Can be 1
- If string is empty, return 0
- Do spaces count as part of the palindrome? yes

  Input: a string of words
  Output: integer

# Examples
puts longest_palindrome('') == 0
- no plaindrome, return 0
puts longest_palindrome('a') == 1
- a.reverse = a == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
'aa'==> 2
puts longest_palindrome('aab') == 2
'aa' == 2
puts longest_palindrome('baabcd') == 4
'baab' = 4
puts longest_palindrome('baab1kj12345432133d') == 9
'123454321'
puts longest_palindrome("I like racecars that go fast") == 7

# Algo
  - Initiate a "longest substring" variable to 0
  - Create a method which iterates through a string, creating every possible substring
    - Initiate a counter variable
      - substring = from counter to the size of the string - 1
      - increment counter for the entire stringe
    - Check to see if the substring is the same in reverse as it is forward
      - If it is, 'longest substring' = the size of that substring
=end

def longest_palindrome(string)
  longest_substring = 0
  counter = 0
  loop do
    counter.upto(string.size - 1) do |index|
      substring = string[counter..index]
      if substring == substring.reverse 
        longest_substring = substring.size if substring.size > longest_substring
      end
    end
    counter += 1
    break if counter >= string.size - 1
  end
  longest_substring
end


puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7



