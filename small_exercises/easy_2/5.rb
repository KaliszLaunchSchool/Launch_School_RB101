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
  user_name = user_name.chop.upcase
  puts "HELLO #{user_name}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{user_name}."
end

=begin
Approach/Algorithm
You may find String#chomp or String#chop handy.

Solution
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

Discussion
We begin by asking for and obtaining the user's name. We then test the last character of the user's name (name[-1]) to see if it is an 
exclamation mark.

If the last character of the name is an exclamation mark, we chop that exclamation mark from the name, then print the SHOUTING version 
of the greeting. Otherwise, we just print a normal greeting.

Note that this solution uses both String#chomp and String#chop. These two methods are closely related, but slightly different: #chomp 
conditionally removes the tail end of a string (defaulting to a newline), while #chop removes the last character unconditionally. Both 
versions also have ! versions that modify the string directly; we could have used these here, but decided not to because the use of 
the ! in both the method name and the string might be mildly confusing.

Further Exploration
Try modifying our solution to use String#chomp! and String#chop!, respectively.
=end