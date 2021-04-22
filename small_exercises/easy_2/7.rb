=begin
Even Numbers
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
=end

range = 1..99
array = range.to_a

array.each {|num| puts num if num.even? }