
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
  largest_possible = working_integer.to_s.split(//).sort.reverse.join.to_i
  if integer.to_s.size < 2
    -1
  elsif integer == largest_possible
  return -1
  else
    start = integer + 1
    (start).upto(largest_possible) do |num|
      if integer.to_s.split(//).sort == num.to_s.split(//).sort
        num
        return num
      end
    end
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

=begin
LS Notes

input: integer
output: integer, or -1 if no valid number is found

Algo
max number = sort the digits, find the max number
current number ... max number, break if the number contains all the digits
If no number is found, then return -1
=end

def next_bigger_num(input)
  max = max_num(input)

  (input + 1..max).to_a.each do |num|
    return num if matches?(num, input)
  end
  return -1
end

def matches?(num, input)
  num.to_s.chars.sort == input.to_s.chars.sort
end

def max_num(input)
  input.to_s.chars.sort.reverse.join.to_i
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798


# OR


def next_bigger_num(input)
  max = max_num(input)

  (input + 1..max).to_a.each do |num|
    return num if max == max_num(num)
  end
  return -1
end

def max_num(input)
  input.to_s.chars.sort.reverse.join.to_i
end