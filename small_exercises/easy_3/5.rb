=begin
Squaring an Argument
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square 
of its argument (the square is the result of multiplying a number by itself).

Example:

square(5) == 25
square(-8) == 64
=end

def square(num)
  solution = num * num
end

p square(5) == 25
p square(-8) == 64

=begin
LS Solution

def square(n)
  multiply(n, n)
end

Discussion
Our implementation relies on the previous exercise's multiply method. The return value of multiply is the 
result of multiplying the two arguments we pass to it, so we can simply pass in the same number twice, which 
will return the squared value. Our square method is implicitly returning the return value from multiply(n, n).

Further Exploration
What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 
5th, etc. How would we go about doing so while still using the multiply method?
=end
