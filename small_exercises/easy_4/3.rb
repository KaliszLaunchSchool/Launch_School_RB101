=begin
Leap Years (Part 1)
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year 
unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 
as input, and returns true if the year is a leap year, or false if it is not a leap year.

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

# Problem
- Create a method which takes one argument
  - Argument is any year greater than 0
- Return true if it is a leap year, false if it is not

Rules for Leap Year
- Every year evenly divisible by 4, unless the year is divisible by 4 AND 100
- If divisible by 100, not a leap year unless also divisible by 400

Input: Integer
Output: Boolean

# Examples
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

# Data
Integer
Boolean

# Algo
- Crate a method which takes one argument
  - Argument is an integer (year)
- Rules:
  - true if year divided by 4 remainder 0, unless year % 4 == 0 and year % 100 == 0 (then, false)
  - false if year % 100 == 0, unless year % 100 == 0 and year % 400 == 0
# Code
=end

def leap_year?(year)
  if year % 4 == 0
    if year % 4 == 0 && year % 100 == 0
      false
      if year % 100 == 0 && year % 400 == 0
        true
      else
        false
      end
    else
    true
    end
  else false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true