=begin
Given 2 strings, your job is to find out if there is a substring that appears in both 
strings. You will return true if you find a substring that appears in both strings, and 
false if not. A substring is longer than 1 character.
=end

puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true
