=begin 
Scramble

Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, 
otherwise, return false.
=end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
