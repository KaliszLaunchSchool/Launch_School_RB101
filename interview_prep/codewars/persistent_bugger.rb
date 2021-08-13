=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the 
number of times you must multiply the digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number

 # Problem
 - Write a function which takes a positive integer, and returns the number of times you must multiply its 
 individual digits until a single digit is reached

 # Algo 
 - Create a method which accepts 1 parameter (an integer)
 - Turn the integer into a string
  - split it into characters
  - turn back into integers
  - inject the aarray to multiply
  - if the result turned into a string's size is 1, break, 
    - else, integer = result
=end

def persistence(integer)
  count = 0
  until integer.to_s.size == 1 do
     integer = integer.to_s.chars.map { |char| char.to_i }.inject(:*)
     count += 1
  end
  count 
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
