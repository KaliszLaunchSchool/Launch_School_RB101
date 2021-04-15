=begin
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

## Problem ##
- Write a method
- Argument is a positive integer
- Prints the list of digits in the number

- What about zero? Looks like 0 is acceptable


## Examples ##
Input: positive integer
Output: Array

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

## Data ##
integer
array
boolean

## Algorithhm ##
- Initiate empty array to add numbers
- Create digit_list method
  - Takes an integer 
  - Validate integer is a positive integer
  - Iterate through integer
  - Add each character to array as separate integer
- Print array
## Code ##
=end

def digit_list(number)
  if number >= 0
    number.digits.reverse
  else
    puts "Please enter a positive number"
  end
end

    puts digit_list(12345) == [1, 2, 3, 4, 5]     
    puts digit_list(7) == [7]                     
    puts digit_list(375290) == [3, 7, 5, 2, 9, 0] 
    puts digit_list(444) == [4, 4, 4] 
