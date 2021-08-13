=begin
# 1. not too hard

Given a number, return the difference between the maximum and minimum numbers that can be formed when the digits are rearranged.

# Problem 
- Given a number, find the minimum and maximum numbers that can be formed when the digits are arranged
- Find the difference of those 2 numbers

Input: integer
Output: integer

Algo
- Create a method which accepts 1 parameter (integer)
- Find the maximum number that that integer can be when it is rearranged
  - split the integer into digits
  - Sort the number in descending order
- Find the minimum number that the integer can be (reverse)
- Subtract the 2
- Return the difference


def rearranged_difference(integer)
  max_num = integer.digits.sort { |a, b| b <=> a}.join.to_i
  min_num = max_num.to_s.reverse.to_i
  difference = max_num - min_num
end

p rearranged_difference(972882) == 760833
# e.g. 988722 - 227889 = 760833  

p rearranged_difference(3320707) == 7709823
# e.g. 7733200 - 23377 = 7709823

p rearranged_difference(90010) == 90981
# e.g. 91000 - 19 = 90981


=begin
# harder

You are given two arrays that each contain data that represents the min and max weather temperatures for each day of the week.

The first array, the records array, contains the all-time record low/high temperatures for that day of the week.
e.g. [[record low, record high], ...]

The second array, the current week array contains the daily low/high temperatures for each day of the current week.
e.g. [[daily low, daily high], ...]

A daily high temperature is considered a new record high if it is higher than the record high for that day of the week. A daily low 
temperature is considered a new record low if it is lower than the record low for that day of the week.

Compare the daily low/high temperatures of the current week to the record lows/highs and return an array with the updated record 
temperatures.

There may be multiple record temperatures in a week.
If there are no broken records return the original records array.

# Problem
- Given 2 arrays: record low/high and daily low/high
- compare the daily temps with record temps
- if high is higher or low is lower,  update the record temp array
- Return new array

Input: 2 arrays
Output: 1 array

# Algo
- Create a method which takes 2 parameters (nested arrays)
  - The arrays have the same number of values
- Iterate through each array
- compare the values of each array at the given point
- if the index of the inner array is 0, select the lower of the 2 numbers and push to new array
- If the index of the inner array is 1, select the higher of the 2 number and push to new array
- The new array should have the same structure as the old arrays


def record_temps(all_time, daily)
  counter = 0
  new_all_time = []
  loop do
    temps = []
    if all_time[counter][0] < daily[counter][0]
      temps << all_time[counter][0]
    else
      temps << daily[counter][0]
    end
    if all_time[counter][1] < daily[counter][1]
      temps << daily[counter][1]
    else
      temps << all_time[counter][1]
    end
    new_all_time << temps
    counter += 1
    break if counter == 7
  end
  p new_all_time
end

#             sun       mon      tues       wed      thur      fri       sat
record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]],
            [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]])

#➞           [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]

# # show how local variable scope works within a method definition

# #num2 = 5

# def addition(num1, num2)
#   total = num1 + num2 #num2 is initialize outside the method and is not accible here.
# end

# p addition(3,4)
# #p total #total is initialized inside the method definition and is not accessible here.

# # show how local variable scope works with blocks

# letters = ("a".."z").to_a
# numbers = (1..letters.size).to_a

# letters.each_with_index{|char,index| puts "the letter #{char} is the #{numbers[index]} letter."}

# p char #char is initialized inside the block on line '17' which is not accessible here because the char is passed to the p method outside the scope defined by the block on line '17'.

# This also shows that the scope defined by the block on line '17' is able to access variables from an outer scope by accessing the variable 'numbers' on line '17'.

# Since we can successfully access `numbers` from within the block on line '17', we show that local variables initialized outside of a block can be accessed from within the block.

#something = "something"

loop do
  something = "something"
  puts something
  break
end

p something
# Is the do..end from lines 18 to 21 a block?


=begin
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

# Problem
- Given an integer, return a string with the number expanded into its components

Input: integer
Output: String

# Algo
- Create a method which accepts 1 parameter
- Initiate an empty string for the result
- Convert the integer into a string
- Find the size of the string, and subtract 1
  - the number of zeros to add to the first element of the string
- Take the first element of the string, add the correct number of zeros and shovel it to the result string
- Onto the next element in the string, with one less 0

=end
=begin
def expanded_form(integer)
  result = ''
  
  number_of_zeros = integer.to_s.size - 1
  string = integer.to_s
  index = 0
  loop do
    result << string[index] + ('0' * number_of_zeros) + ' + ' unless string[index].to_i == 0 
    index += 1
    number_of_zeros -= 1
    break if index == string.size
  end

  result.chop.chop.chop
end
=end

def expanded_form(integer)
  result = []
  number_of_zeros = integer.to_s.size - 1

  integer.to_s.chars.each do |num|
    result << num + ('0' * number_of_zeros) unless num.to_i == 0
    number_of_zeros -= 1
  end
  result.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'


