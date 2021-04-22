=begin
Even Numbers
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
=end

range = 1..99
array = range.to_a

array.each {|num| puts num if num.even? }

=begin

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

Discussion
Our solution is just a minor variation on the solution to print odd numbers. This time, though, we increment 
the value by 1 with every iteration, and only print it if it is even.
=end
