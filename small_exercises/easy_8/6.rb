=begin
fizzbuzz
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number 
is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Problem
- Create a methos which accepts 2 parameters (integers)
- Prints all the numbers beterrn and including the 2
- if divisible by 3, print "Fizz"
- if divisible by 5, print "Buzz"
- if a number is divisible by 3 and 5, print "FizzBuzz"

# Examples
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Data 
- Integer
- String
- Array

# Algo
- Create a method which accepts 2 parameters (integer)
- Create a range with the 2 parameters
- Convert the range to an array
- Iterate through the array
  - If integer%3 == 0 and integer % 5 == 0, integer = FizzBuzz
  - Elseif integer % 3 == 0, integer == "Fizz"
  - Elseif integer % 5 == 0, integer == "Buzz"
  - Else, integer
- Print each

# Code
=end

def fizzbuzz(num_1, num_2)
  results = []
  numbers = (num_1..num_2).to_a
  numbers.each do |num|
    if num % 3 == 0 && num % 5 == 0
      results << "FizzBuzz"
    elsif num % 3 == 0
      results << "Fizz"
    elsif num % 5 == 0
      results << "Buzz"
    else
      results << num
    end
  end
  results.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=begin
LS Solution

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

Discussion
There may be a couple of things that you haven't encountered in this solution. First, notice that we use a case 
statement in the fizzbuzz_value method. This case statement doesn't have a value next to case for comparison. 
When using a case statement in this form, we get the same functionality as if we used an if/elsif/else 
conditional.

Another thing of interest is that there isn't anything other than that case statement in fizzbuzz_value method. 
This works because a case statement returns the value from the last line of the matched when branch. For 
example, if a number is divisible only by 3, then 'Fizz' is returned from the case statement. That return 
value then acts as the return value for the method, since there are no other lines after this case statement.
=end
