=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

# Problem 
- Create a method which, given a string, finds the greates product out of 5 consecutive digits in that string
- Input string always > 5 digits
- Only digits

For example:
greatestProduct("123834539327238239583") // should return 3240 The input string always has more than five digits.

Input: string of digits
Output: Integer

# Algo
- Create a method which finds each consesutive 5 character substring of a given string
- Iterate through the array of 5 character substrings
  - transform them into an array of integers
  - find the product and send to a new array
- Find the max of that new array
- Return that integer
=end

def greatest_product(string)
  subarrays = find_subarrays(string)
  products = []
  subarrays.each do |array|
    integers = array.map {|element| element.to_i}
    products << integers.inject(:*)
  end
  products.max
end

def find_subarrays(string)
  results = []
  string.chars.each_cons(5) {|sub| results << sub}
  results
end

p greatest_product("123834539327238239583") == 3240 
p greatest_product("395831238345393272382") == 3240 
p greatest_product("92494737828244222221111111532909999") == 5292 
p greatest_product("92494737828244222221111111532909999") == 5292 
p greatest_product("02494037820244202221011110532909999") == 0
