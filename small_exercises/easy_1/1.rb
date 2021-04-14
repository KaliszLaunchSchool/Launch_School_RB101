=begin
Write a method that takes two arguments, a string and a positive integer, and prints 
the string as many times as the integer indicates.

Example:

repeat('Hello', 3)
Output:

Hello
Hello
Hello

## Problem: ##
- Method has 2 arguments
  - One argument is a string
  - The other argument an integer
    - Integer must be positive
- Print the string the number of times indicated by the positive integer

- Input: string, integer
- Output: String 

- Questions
  - What should happen if a negative integer is input?
  - What should happen if 0 is input?

## Example/Test ##
repeat('Hello', 3) # Hello Hello Hello
repeat('Hello, mom', 0) #
repeat('Hi, mom', 1) # Hi, mom


## Data Types ##
String
Integer

## Algorithm ##
- Initialize a method which takes 2 arguments
- Initialize a counter
- Loop the string
- Print the string
- Increment the count
- Stop the loop when counter equals the number indicated by the method call
- Create a error message if the num is 0 or less

## CODE ##
=end

def repeat(string, num)
  if num > 0
    counter = 0
    loop do 
      puts string 
      counter += 1
      break if num == counter
    end
  else 
    puts "Please enter a number greater than zero"
  end
end

repeat('Hello', 3) # Hello Hello Hello
repeat('Hello, mom', 0) # Please enter a number greater than 0
repeat('Hi, mom', 1) # Hi, mom
repeat('Hellooooo', -5) # Please enter a number greater than 0