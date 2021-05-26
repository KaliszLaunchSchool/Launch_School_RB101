=begin
After Midnight (Part 2)
As seen in the previous exercise, the time of day can be represented as the number of minutes before 
or after midnight. If the number of minutes is positive, the time is after midnight. If the number of 
minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes 
before and after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Yes, we know that 24:00 isn't a valid time in 24-hour format. Humor us, though; it makes the problem 
more interesting.

Disregard Daylight Savings and Standard Time and other irregularities.

# Problem
- Write 2 methods, each taking the time of day in 24h format as a string.
- Return integer representing the number of minutes before and after midnight 
  - Range 0...1439

Input: String
Output: Ineger

# Example

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

# Data
String
Integer

# Algo
After midnight
- Write a method which takes 1 parameter (string)
- Split the string at the : and translate into 2 integers
- Subtract first integer from 24, then multiply the first integer by 60, add the 2nd integer
- Return the integer

Before midnight
- Write a method which takes 1 parameter (string)
- Split the string at the : and translate into 2 integers
- Subtract 24 from the first integer,  then multiply the first integer by 60, add the 2nd integer
- Return the integer
# Code
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(military_time)
  hours_minutes = military_time.split(':').map { |num| num.to_i }
  minutes = ((hours_minutes[0] + HOURS_PER_DAY) * MINUTES_PER_HOUR) + hours_minutes[1]
  loop do
    break if minutes < MINUTES_PER_DAY
    minutes -= MINUTES_PER_DAY
  end
  minutes
end

def before_midnight(military_time)
  hours_minutes = military_time.split(':').map { |num| num.to_i }
  minutes = MINUTES_PER_DAY - (((hours_minutes[0] - HOURS_PER_DAY) * MINUTES_PER_HOUR) + hours_minutes[1])
  loop do
    break if minutes < MINUTES_PER_DAY
    minutes -= MINUTES_PER_DAY
  end
  minutes
end


def normalize(minutes)
  loop do
    break if minutes < MINUTES_PER_DAY
    minutes -= MINUTES_PER_DAY
  end
end
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
