=begin
Multiples of 3 and 5
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then 
computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 
98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# Problem
- Write a method, takes one argument (an integer)
- Searches for all multiples of 3 or 5 that lie between 1 and that number
- computes the sum of the multiples
- Each multiple should be unique
- Assume number passed is an integer greater than 1
Inupt: Integer
Output: Integer

# Examples
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(20) == 98
multisum(1000) == 234168

# Data
Integer
Array

# Algo
- Crate a method which takes an integer (num)
- Initiate an array
- Calculate all multiples of 3 between 1 and num(array)
- Calculate all multiples of 5 between 1 and num(array)
- Combine arrays, and make sure there are no duplicate numbers
- sum the array
- Return the sum

#Code
=end

def multisum(number)
  multiples_of_3_and_5 = []
  array_of_numbers = (1..number).to_a
  array_of_numbers.select do |num| 
    if num % 3 == 0 
      multiples_of_3_and_5 << num
    elsif num % 5 == 0
      multiples_of_3_and_5 << num
    end
  end
  sum = multiples_of_3_and_5.sum
end

puts multisum(3) #== 3
puts multisum(5) #== 8
puts multisum(10) #== 33
puts multisum(20) #== 98
puts multisum(1000) #== 234168
