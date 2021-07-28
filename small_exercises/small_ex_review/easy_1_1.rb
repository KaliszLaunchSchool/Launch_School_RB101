=begin
Repeat Yourself
Write a method that takes two arguments, a string and a positive integer, and prints the 
string as many times as the integer indicates.

Example:

repeat('Hello', 3)
Output:

Hello
Hello
Hello

Problem
- Write a method which accepts 2 arguments
  - String
  - Positive integer
- Prints the string the number of times indicated by the integer

Input: sting, integer
Output: Strings

Examples
repeat('Hello', 3) #==> Hello Hello Hello

Data: String, Integer

Algo
- Create a method whuch accepts 2 parameters (string, integer)
- print the string an integer number of times
=end

def repeat(string, integer)
  integer.times do 
    puts string
  end
end

repeat('Hello', 3)