=begin
Write a function

triple_double(num1, num2)

which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any 
place in num1 and also a straight double of the same number in num2.

If this isn't the case, return 0

Examples
triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s

triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2

triple_double(12345, 12345) == 0

triple_double(666789, 12345667) == 1

# Problem
- Write a function which takes 2 numbers
- Determines if there is a triple num in one, and a double num in the 2nd
  - If yes, return 1
  - If no, return 0

# Examples
triple_double(451999277, 41177722899) == 1

triple_double(1222345, 12345) == 0

triple_double(12345, 12345) == 0

triple_double(666789, 12345667) == 1

# Data: integer, array

# Algo
- Create a method which accepts 1 num, and determines all of the numbers that are a triple
  - Initiate a results array
  - Split the num into chars and group them into consecutive 3's
    - If all of the nums are the same, add that num to results array

- Look at the results arrays, and determine if they have the same num 
- If yes, return 1. If no, return 0
=end

def triple_double(num1, num2)
  all_triples = consecutive_nums(num1, 3)
  all_doubles = consecutive_nums(num2, 2)

  result = 0
  if all_triples.empty?
    return result = 0
  else
    all_triples.each do |num|
      return result = 1 if all_doubles.include?(num)
    end
    result = 0
  end
end

def consecutive_nums(num, le)
  results = []
  all_consecutive_nums = []
  num.to_s.chars.each_cons(le) do |nums|
    all_consecutive_nums << nums
  end
  all_consecutive_nums.each do |nums|
    num = nums[0]
    if nums.all?(num)
      results << num
    end
  end
  results
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1