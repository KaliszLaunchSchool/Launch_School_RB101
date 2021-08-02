=begin
Greeting a user
Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer 
yells back to the user.

Examples

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

# Problem
- Create a program that asks for a user's name
  - If the user inputs 'name!', the computer yells back
  - If the iser inputs 'name', the computer outputs 'Hello, name.'

Input: string
Output: string

# Algo
- Create a method which takes user input (a name)
- Outputs aa string back depending upon if the name has an '!' at the end
=end

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name = name[0...-1].upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end