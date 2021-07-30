=begin
How old is Teddy?
Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random 
number between 20 and 200.

Example Output

Teddy is 69 years old!

# Problem
- Create a program that randomy generates and print's an age
- Age is a random number between 20 and 200

Input: none
Output: string

Algo
- Create a method which, when run:
- Randomly chooses an integer between 20 and 200
- Outputs that number in a string
=end

age = (20..200).to_a.sample

puts "Teddy is #{age} years old!"