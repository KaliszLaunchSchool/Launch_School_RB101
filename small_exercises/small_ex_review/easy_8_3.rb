=begin
Leading Substrings
Write a method that returns a list of all substrings of a string that start at the beginning of the original 
string. The return value should be arranged in order from shortest to longest substring.

Examples:

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
=end



def leading_substrings(string)
  all_substrings = []
  1.upto(string.size) do |length|
    string.chars.each_cons(length) {|substr| all_substrings << substr.join}
  end

  all_substrings.select {|substring| substring[0] == string[0] }
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']