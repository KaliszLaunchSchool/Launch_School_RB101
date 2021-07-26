
=begin
You have to create a method that takes a positive integer number and returns 
the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

# Problem
- Create a method which take a positive integer
- Returns the next biggest number formed by the same digits
- If no bigger number, return -1

# Algo
- Create a method which takes a positive integer
- Duplicate that positive integer to manupulate it
- If size is one, return -1
- If size > 1
  - turn the integer into an array, sort it, reverse it, and join
    - this will be the largest number possible
  - from original number to largest possible
    - Iterate to the next number
    - if it has all the same digits as the original, return that number
  - if nil, return -1
=end

def next_bigger_num(integer)
  working_integer = integer.dup
  if integer.to_s.size < 2
    -1
  else
    largest_possible = working_integer.to_s.split(//).sort.reverse.join.to_i
    integer.up_to(largest_possible)
    
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
#p next_bigger_num(513) == 531
#p next_bigger_num(2017) == 2071
#p next_bigger_num(111) == -1
#p next_bigger_num(531) == -1
#p next_bigger_num(123456789) == 123456798
