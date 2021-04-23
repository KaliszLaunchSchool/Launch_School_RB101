=begin
Searching 101

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 
6th number appears amongst the first 5 numbers.

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

# Problem
- Write a program
- Asks the users for 6 numbers
- Checks if the last number appears in the first 5 numbers
- Print results

Input: Integer
Output: Array, String

# Examples
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

# Data
Integer
Array
String

# Algo
- Ask user for 6 numbers
- Add each number to an array
- Add 6th number to a variable
- Check to see if the 6th number is in the array of the first 5 numbers
- If it is, output that the number appears in the array
- If it does not, output that the number does not appear in the array

# Code
=end

def prompt(string)
  puts "==> #{string}"
end

first_five_numbers = []

prompt("Enter the 1st number:")
number_1 = gets.chomp.to_i

prompt("Enter the 2nd number:")
number_2 = gets.chomp.to_i

prompt("Enter the 3rd number:")
number_3 = gets.chomp.to_i

prompt("Enter the last number:")
last_number = gets.chomp.to_i

first_five_numbers = [number_1, number_2, number_3]

if first_five_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{first_five_numbers}."
else
  puts "The number #{last_number} does not appear in #{first_five_numbers}."
end