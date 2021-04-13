def sum_even_number_row(row_number)

end

def create_row(start_integer, row_length)

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

p create_row(2, 1) == [2]
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10, 12]