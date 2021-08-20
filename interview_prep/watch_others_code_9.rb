=begin
Problem 1: Find Even Index

You are given an array of integers. Your job is to take that array and find an index N where the sum of 
the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that 
would make this happen, return -1. Empty arrays are equal to 0 in this problem.

# Problem
- Given an array of intergers, find the index where the 
sum of the integers to the left of N = the sum to the right of N
  - can be + and - integers
  - does not include the number that is at the index
- If there is no index to do that, return -1
- If empty array, return 0

Input: Array of integers
Output: integer (an index)

# Examples
p find_even_index([]) == 0
  # Empty arrays return 0
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
  # 1+2+2 = 3+2+1
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
  # 1 = 50 - 51 + 1 + 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
  #  None, return - 1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
  # 20 + 10 + 30 = 10 + 15 + 35
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

# Algorithm
- Create a method which accepts 1 parameter (array)
- If the array is empty, return 0
- Iterate through the array
  - At each index, check to see if the sum of everything before that index = the sum of everything after that index
    - if that is true, return the index (can be 0)
    - If the iteration finishes with nothing being true return -1

=end

def find_even_index(array)
  return 0 if array.empty?
  array.each_with_index do |_num, index|
    sum_after = array[(index + 1)..-1].sum
    sum_before = array[0..(index-1)].sum
    if index == 0
      sum_before = 0
      return index if sum_before == sum_after
    elsif sum_before == sum_after
      return index 
    end
  end
  -1
end

p find_even_index([]) == 0
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

# LS solution

def find_even_index(arr)
  n = 0 

  loop do
    if n == 0 
      left_array = []
    else
      left_array = arr[0..(n-1)]
    end

    right_array = arr[(n+1)..(arr.length - 1)]

    left_sum = 0
    right_sum = 0
    left_sum = left_array.reduce(:+) unless left_array.empty?
    rught_sum = right_array.reduce(:+) unless right_array.empty?

    if left_sum == right_sum
      return n
    else
      n += 1 
    end
    break if n == arr.size
  end
  -1 
end