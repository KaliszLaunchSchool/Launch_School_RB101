=begin
Name Swapping
Write a method that takes a first name, a space, and a last name passed as a single String argument, and 
returns a string that contains the last name, a comma, a space, and the first name.

Examples
swap_name('Joe Roberts') == 'Roberts, Joe'

# Problem
- Create a method
- Takes 1 string with 2 words
- Switch the words and add a comma between them

Input: String
Output: String

# Examples
swap_name('Joe Roberts') == 'Roberts, Joe'

# Data
- String
- Array 

# Algo
- Create a method which takes 1 parameter (string)
- Split the string at the space
- pop the last name off, add a comma, push back
- Join the array back into a string

# Code
=end

def swap_name(name)
  name_array = name.split(' ')
  last_name = name_array.pop + ','
  name_array.unshift(last_name).join(' ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

=begin
LS Solution

def swap_name(name)
  name.split(' ').reverse.join(', ')
end

Discussion
The method is given a full name as a string. Since we know the name is divided by a space we can use 
String#split with an argument of (' '). This gives us an array ['Joe', 'Roberts'].

We then use Array#reverse to give us ['Roberts', 'Joe'] and, finally, we use Array#join with the comma and the 
space (', ') giving us the desired result.
=end
