=begin
Complete the method that accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.

# Problem
Create a method which accepts 2 arrays of integers
  - Arrays will be the same length
- Compare integers at the same index with one another (ie. index 0 compares to index 0)
- Finds the difference between the absolute values of those compared integers, and squares that
  - Take negatives, and turn them positive, and subtract those values
- Return the avg of those differences between each pair 
Examples

[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
- 1-4 = -3  3^2 = 9  
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
10-10 = 0 0^2 =0 
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

solution([1, 2, 3], [4, 5, 6]) == 9
solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
solution([-1, 0], [0, -1]) == 1

Input: array of integers
Output: Aa resulting integer

# Algo
- Create a method which accepts 2 parameters (arrays of the same size)
- Create a 'result to average' empty array
- Iterate through the arrays
  - Find the element of each array at each index, and create a variable for each
    - Find the absolute values, Subtract those 2 integers, then square the result 
    - Add it to the results array
- Sum the results array and divide by size for the average
- Return that
=end

=begin
def solution(array_1, array_2)
  nums_to_average = []
  index = 0
  loop do
    difference = array_1[index] - array_2[index]
    nums_to_average << difference ** 2
    break if index == (array_1.size - 1)
    index += 1
  end
  p nums_to_average.sum.to_f / array_1.size.to_f
end
=end

# Additional solution: 

def solution(array_1, array_2)
  nums_to_average = []
  array_1.each_with_index do |num, idx|
    difference = num - array_2[idx]
    nums_to_average << difference ** 2
  end
  p nums_to_average.sum.to_f / array_1.size.to_f
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1