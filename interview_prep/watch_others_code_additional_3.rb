
#Problem 3: Palindromes
# Write a method that will return all palindromes within a string.

def longest_palindrome(str)
  list_of_palindromes = palindromes(str)
  longest = list_of_palindromes.max_by {|str| str.size}
end

def palindromes(string)
  substrings = find_all_strings(string)
  palindromes = substrings.select {|substr| substr == substr.reverse && substr.size > 1 }
end

def find_all_strings(string)
  subs = []
  1.upto(string.size) do |length|
    string.chars.each_cons(length) {|substr| subs << substr.join}
  end
  subs
end

p palindromes('ppop') == ['pp', 'pop']

# Write a method that finds the longest substring that is a palindrome within a string.
p longest_palindrome("ppop") == 'pop'
