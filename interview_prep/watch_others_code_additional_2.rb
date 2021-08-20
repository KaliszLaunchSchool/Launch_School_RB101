=begin
#Problem 2: All Substrings
# Write a method that finds all substrings in a string, no 1 letter words.

Create a method which returns all substrings, unless the substring is 1 letter

=end
=begin
def substrings(string)
  subs = []
  2.upto(string.size) do |length|
    string.chars.each_cons(length) {|substring| subs << substring.join}
  end
  subs
end
=end

def substrings(string)
  subs = []
  counter = 0
  loop do
    counter.upto(string.size - 1) do |idx|
      subs << string[counter..idx]
      end
      counter += 1
      break if counter == string.size - 1
  end
  p subs.select {|string| string.size > 1}
end

p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
