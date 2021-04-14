def sum_even_number_row(row_number)
  rows = [] #create empty array
  start_integer = 2 # create starting point for start_integer
  # steps 2&3, loop
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2 # or use rows[rows.length - 1] 
  end
  # option 1: 
  # final_row_sum = 0
  # rows.last.each {|num| final_row_sum += num}
  # final_row_sum
  # OR
  # rows.last.reduce {|final_row_sum, num| final_row_sum + num}
  # OR
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = [] # create empty row array
  current_integer = start_integer
  # steps 2-4 (loop)
  loop do
    row << current_integer
    current_integer +=2
    break if row.length == row_length
  end
  row # return row array
end

# Use these examples to create test cases
# row number: 1 —> sum of integers in row: 2
# row number: 2 —> sum of integers in row: 10
# row number: 4 —> sum of integers in row: 68

p sum_even_number_row(1) == 2 #true
p sum_even_number_row(2) == 10 #ture
p sum_even_number_row(4) == 68 # true

# Start: 2, length: 1 —> [2]
# Start: 4,  length: 2 —> [4, 6]
# Start: 8, length: 3 —> [8, 10, 12]

# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12]

# Algorithm for create_row
# 1. Create an empty 'row' array to contain the integers
# 2. Add the starting integer
# 3. Increment the starting integer by 2 to get the next even integer in the sequence
# 4. Repeat steps 2 and 3 until the array has reached the correct length (steps 2&3 should be inside the loop)
# 5. Return the 'row' array

# Start the loop
#   - Add the start integer to the row
#   - Increment the start integer by 2
#   - Break out of the loop if length of row equals row_length

# Algorithm for solution
# 1. Create an empty 'rows' array to contain all of the rows
# 2. Create a 'row' and add it to the overall 'rows' array
# 3. Repeat step 2 until all the necessary rows have been created
#     - All rows have been created when the length of the 'rows' array is equal to the input integer
# 4. Sum the final row
# 5. Return the sum of the final row

# Calculate the start integer
# Rule: first integer of row = last integer of preceeding row + 2
# Algorithm:
#  - Get the last row of the rows array
#  - Get the last integer of thhat row
#  - Add 2 to the integer