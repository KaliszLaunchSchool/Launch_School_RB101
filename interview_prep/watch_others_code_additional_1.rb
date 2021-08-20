=begin
Problem 1: Substring at index

Write a method that will return a substring based on specified indices.
=end

def substring(string, idx1, idx2 = idx1 )
  substrings = find_all_subs(string)
  p substrings
  string[idx1..idx2]
end

def find_all_subs(str)
  substrings = []
  1.upto(str.size) do |length|
    str.chars.each_cons(length){|substring| substrings << substring.join }
  end
  substrings
end

p substring("honey", 0, 2) == "hon"
p substring("honey", 1, 2) == "on"
p substring("honey", 3, 9) == "ey"
p substring("honey", 2) == "n"
