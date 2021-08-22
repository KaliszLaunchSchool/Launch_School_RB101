=begin
Given a matrix represented as a list of strings, such as...

matrix = ['###.....',
					'..###...',
					'....###.',
					'.....###',
					'.....###',
					'....###.',
					'..###...',
					'###.....']

...write a function; rotateClockwise(matrix), that return its 90° clockwise rotation, for example:

['#......#',
 '#......#',
 '##....##',
 '.#....#.',
 '.##..##.',
 '..####..',
 '..####..',
 '...##...']

 # Problem
 - Create a method which rotates an array clockwise

rotate_clockwise(["abc", "def"]) == ["da", "eb", "fc"]
  - an array with 2 elements, each size 3, becomes an array with 3 elements, each size 2
  [def, abc] --> da eb cf

Input: array
Output: transformed array

# Algo
- Create a method which accepts 1 variable (array of strings)
- Reverse the array
- Iterate through the array, n number of times (n = the size of the elements in the array)
  - Take the elements at the index corresponding to n, and create subarrays with them
    - Push the subarrays to the result array

- Join each element of the result array into strings


=end

def rotate_clockwise(array)
  array = array.reverse
  n = array[0].size
  result = []
  n.times do |index|
    sub_arrays = []
    array.each do |element|
      sub_arrays << element[index]
    end
    result << sub_arrays.join
  end
  p result
end


p rotate_clockwise(["abc", "def"]) == ["da", "eb", "fc"]
p rotate_clockwise(["c","b","a"]) == ["abc"]
p rotate_clockwise(["cba"]) == ["c","b","a"]
p rotate_clockwise(["a", "b", "c"]) == ["cba"]
p rotate_clockwise(['###.....', '..###...', '....###.', '.....###', '.....###', '....###.', '..###...', '###.....']) == ['#......#', '#......#', '##....##', '.#....#.', '.##..##.', '..####..', '..####..', '...##...']