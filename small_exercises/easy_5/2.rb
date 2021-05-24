=begin
After Midnight (Part 1)
The time of day can be represented as the number of minutes before or after midnight. If the 
number of minutes is positive, the time is after midnight. If the number of minutes is 
negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day 
in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
Disregard Daylight Savings and Standard Time and other complications

# Problem
- Create a method which takes one parameter(even or odd integer)
- If integer is positive, the time is after midnightt
- If integer is negative, the time is before midnight

-Take the time in minutes, and return the time in 24h format

Input: Integer
Output: String

# Examples
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# Data 
Integer
String

# Algo

time_of_day(0) == "00:00"
time_of_day(35) == "00:35"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"

- Initiate a method which takes one parameter (total_minutes)
- 1440 minutes/day
- If total_minutes/1440 > 1
  - total_minutes - 1440

- Take total_minutes / 60 
  - h = total_minutes/60 (integer division)
  - m = total_minutes - (total_minutes * 60) 
- Output h:m (in tens)

# Code
=end
=begin
def time_of_day(total_minutes)
  num_of_days = 0
  minutes = total_minutes.dup.to_f
  loop do
    break if minutes/1440 < 1
    minutes -= 1440
    num_of_days += 1
  end
  p minutes
  p num_of_days
  total_minutes
end

p time_of_day(0) #== "00:00"
p time_of_day(35) #== "00:35"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
=end

=begin
def time_of_day(total_minutes)
  hours_minutes = total_minutes.divmod(1440)
  if total_minutes.negative?
  else
    if hours_minutes.all?{|num| num < 100}
      if hours_minutes[0] < 10
        hours_minutes[0] = '0' + hours_minutes[0].to_s
      end
      if hours_minutes[1] < 10
        hours_minutes[1] = '0' + hours_minutes[1].to_s
      end
    end
  end
  p "#{hours_minutes[0]}:#{hours_minutes[1]}"
end
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(total_minutes)
  hours = total_minutes / MINUTES_PER_HOUR
  minutes = total_minutes
  if total_minutes.positive?
    loop do
      break if hours < 24
      hours -= 24
    end
    loop do
      break if minutes < 60
      minutes -= 60
    end
  else

  end
  if hours < 10 
    hours = "0" + hours.to_s
  end
  if minutes < 10 
    minutes = "0" + minutes.to_s
  end
  p "#{hours.to_s}:#{minutes.to_s}"
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"