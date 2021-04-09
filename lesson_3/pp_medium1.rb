=begin
Question 1
Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the 
days before computers had video screens).

For this practice problem, write a one-line program that creates the following 
output 10 times, with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

10.times { |number| puts (' ' * number) + 'The Flintstones Rock!' }
=end
=begin
Question 2
The result of the following statement will be an error:
Why is this and what are two possible ways to fix this?
no implicit conversion of Integer into String is the error.
happens because it is trying to add the string to the integers.

puts "the value of 40 + 2 is " + (40 + 2)
Fixes:

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"
=end
=begin
Question 3
Alan wrote the following method, which was intended to show all of the 
factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

Bonus 1
What is the purpose of the number % divisor == 0 ?

Bonus 2
What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?

Solution 3
Question 4
Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

Copy Code
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
Solution 4
Question 5
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

Copy Code
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
How would you fix this so that it works?

Solution 5
Question 6
What is the output of the following code?

Copy Code
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
Solution 6
Question 7
One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

Copy Code
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

Copy Code
mess_with_demographics(munsters)
Did the family's data get ransacked? Why or why not?

Solution 7
Question 8
Method calls can take expressions as arguments. Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

Copy Code
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
What is the result of the following call?

Copy Code
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
Solution 8
Question 9
Consider these two simple methods:

Copy Code
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
What would be the return value of the following method invocation?

Copy Code
bar(foo)
=end
