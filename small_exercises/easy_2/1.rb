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

=begin
Approach/Algorithm
Hint: you may find the rand method useful. It is documented in the Kernel module.

Solution

age = rand(20..200)
puts "Teddy is #{age} years old!"

Discussion
Our solution uses Kernel#rand with a range (20..200) as an argument. This use is described in the documentation 
for rand, although it is kind of an afterthought.

Nevertheless, the use of a range to limit the output value is an enormous help here, so we use it to generate 
Teddy's age. Afterward, all we have to do is print the result.

Further Exploration
Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use 
"Teddy" as the name if no name is entered.
=end

prompt = "What is the name of your bear?"

age_range = (20..200).to_a
teddys_age = age_range.sample

puts prompt
name = gets.chomp 
if name == ''
  name = "Teddy" 
end
p "#{name} is #{teddys_age} years old!"
