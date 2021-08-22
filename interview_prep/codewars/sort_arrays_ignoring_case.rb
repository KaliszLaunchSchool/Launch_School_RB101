=begin
42. Sort Arrays (Ignoring Casehttps://www.codewars.com/kata/51f41fe7e8f176e70d0002b9/train/ruby)
(https://www.codewars.com/kata/51f41fe7e8f176e70d0002b9/train/ruby)

Sort the given strings in alphabetical order, case insensitive. For example:

["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]
=end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]
