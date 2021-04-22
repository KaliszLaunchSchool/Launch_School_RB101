=begin
Greeting a user
Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer 
yells back to the user.

Examples

What is your name? Bob
Hello Bob.
Copy Code
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

# Problem
- Ask for user name
- store user name in a variable
- If name includes !
  - Yell name back
- Else, greet user

input = string
output = string

# Examples
What is your name? Bob
Hello Bob.
Copy Code
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

# Data
string

# Algo
- Ask for user name
- store user name in a variable
- If name includes !
  - Yell name back
- Else, greet user

# Code
=end
puts "What is your name?"
user_name = gets.chomp

if user_name.include?("!")
  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{user_name}."
end
