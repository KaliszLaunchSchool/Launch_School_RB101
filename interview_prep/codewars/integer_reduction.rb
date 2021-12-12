=begin
Will be given two integers n and k and your task is to remove k-digits from n 
and return the lowest number possible, without changing the order of the digits in n. Return the 
result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 and return the 
lowest possible number. The best digits to remove are (1,2,3,6) so that the remaining digits are 
'05'. Therefore, solve(123056,4) = '05'

Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', because 
we have removed 8 and 9.

# Problem
- Given 2 integers (n, k), remove k digits from m 
- return the lowest possible number (as a string)
- DO NOT change the order of digits in n

# Example
123056,4 ==> '05'

# Data: array, string, integer

# Algo
- Given an integer, number
- Create all combinations of the integer of length integer.length - number
- return the lowest number as a string
=end

def solve(integer, number)
  new_length = integer.to_s.length - number
  numbers = []
  integer.to_s.chars.combination(new_length) do |num|
    numbers << num
  end
  numbers = numbers.map {|num| num.join}
  lowest_num = numbers.min.to_s
end

solve(123056,1) #'12056')
solve(123056,2) #'1056')
solve(123056,3) #'056')
solve(123056,4) #'05')
solve(1284569,1) #'124569')
solve(1284569,2) #'12456')
solve(1284569,3) #'1245')
solve(1284569,4) #'124')