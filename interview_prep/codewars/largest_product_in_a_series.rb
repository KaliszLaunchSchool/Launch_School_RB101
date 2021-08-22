=begin
39. Largest product in a series
(https://www.codewars.com/kata/529872bdd0f550a06b00026e/train/ruby)
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

# Probelm
- Given a string of digits, find the greatest product of 5 consecutive digits in that string

# Algo
- Create a method that finds all consecutive substrings given a string
  - Return an array

- Find all consecutive substrings from the helper method
- Select all that are 5 chars long
  - Take find the product of each
  - Return the lergest product
=end

def greatest_product(string)
  substrings = find_all_substrings(string)
  results = []
  substrings.each do |nums|
    nums = nums.map {|num| num = num.to_i }
    results << nums.reduce(:*)
  end
  results.max
end

def find_all_substrings(string)
  subs = []
  string.chars.each_cons(5) {|sub| subs << sub}
  subs
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
