=begin
How old is Teddy?
Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random 
number between 20 and 200.

Example Output

Teddy is 69 years old!

# Problem
- Create a program
- Generates teddy's age
- Prints teddy's age
- Age is a random number between 20 and 200

Input: Integer
Output: String

# Example
Teddy is 69 years old!

# Data
Integer
String
Range

# Algo
- Create an age range between 20 and 200
- Gnerate a random number from this range
- Assign teddy's age to random number
- Print Teddy's age

# Code
=end

age_range = (20..200).to_a
teddys_age = age_range.sample

p "Teddy is #{teddys_age} years old!"