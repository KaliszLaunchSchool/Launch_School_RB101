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
=begin
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
    loop do
      hours = hours * -1
      break if hours < 24
      hours -= 24
    end
    loop do
      break if minutes < 60
      minutes -= 60
    end
  end
  if hours < 10 
    hours = "0" + hours.to_s
  end
  if minutes < 10 
    minutes = "0" + minutes.to_s
  end
  p "#{hours.to_s}:#{minutes.to_s}"
end
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end
  minutes
end

def time_of_day(total_minutes)
  hours = total_minutes / MINUTES_PER_HOUR
  total_minutes = normalize_minutes(total_minutes)
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
  end
  while hours < 0
    hours += 24
  end
  if hours < 10 
    hours = "0" + hours.to_s
  end
  if minutes < 10 
    minutes = "0" + minutes.to_s
  end
  "#{hours.to_s}:#{minutes.to_s}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

=begin
LS Solution

Approach/Algorithm
The Integer#divmod method and the % (modulo) operator may prove useful in your solution. You may also find 
Kernel#format handy for formatting your results.

You may want to solve this problem for non-negative arguments that are between 0 and 1439 first. Once you've 
done that, try handling arguments that are greater than 1439. Finally, solve it for negative values. Think about 
how you might be able to simplify the final two parts. (Hint: one day is 1440 minutes)

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

Discussion
We start out this solution by defining a few useful constants so we don't have a bunch of mystery numbers in 
our method. The most important one we're concerned of is MINUTES_PER_DAY, which has a value of 
1440 (24 * 60 == 1440).

Our solution now boils down to 3 main operations:

The most interesting -- and difficult -- part of this program is normalizing the argument so that we only have to deal 
with values that represent part of a single day. See below for why we do that.
Once we've normalized the number of minutes, we can use Integer#divmod to determine the how many hours and minutes are 
represented by that value.
Finally, we use the hours and minutes to format the time of day.

The fact that delta_minutes can be outside the range 0-1439 minutes makes this problem more complex than it seems. However, 
if you think about the problem for a few minutes, you may realize that there is something we can do to make our job easier. 
We can normalize the number of minutes so that we only have to deal with values that are positive but less than a full day: 
0-1439.

Consider for instance, the time of day 3 minutes before midnight (delta_minutes == 3). That's the same time of day as 1437 
minutes after midnight (MINUTES_PER_DAY - 3 == 1437). On the other hand, the time of day 1443 minutes past midnight is the 
same as the time of day 3 minutes past midnight (MINUTES_PER_DAY - 1440 == 3). The #normalize_minutes_to_0_through_1439 
method restricts each argument to this range without changing the expected results.

If delta_minutes is greater than or equal to 0, we can normalize it easily enough by computing the remainder of dividing 
delta_minutes by MINUTES_PER_DAY, which we do on line 10. Lines 6-8 won't have any effect on these values of delta_minutes, 
so we should now have the normalized number of minutes.

If delta_minutes is less than 0, normalization is a little more complex, but not by much. All we have to do is add 1440 
minutes to the argument's value repeatedly until the value is no longer negative. Thus, -2500 is normalized to 
380 (-2500 + 1440 == -1060; -1060 + 1440 == 380; 380 >= 0). Once we have a normalized value, we're done. We could return 
the value as-is at this point, but we can simplify the code a bit by just treating the normalized value as a normal 
non-negative value; it doesn't change anything, but eliminates extra code.

Further Exploration
Problem 1

The % operator's interaction with negative values is confusing and difficult to remember, as described in the Introduction 
to Programming with Ruby Book. Because of that, we recommend not using % with negative numbers, but that you should first 
convert the negative values to positive numbers so you can write more explicit code. This problem is one such place where 
it's probably easier to take this approach.

However, that doesn't mean you can't use % at all. In fact, it's possible to write a single calculation with % that 
performs the entire normalization operation in one line of code. Give it a try, but don't spend too much time on it.

Problem 2

How would you approach this problem if you were allowed to use ruby's Date and Time classes?

Problem 3

How would you approach this problem if you were allowed to use ruby's Date and Time classes and wanted to consider the day 
of week in your calculation? (Assume that delta_minutes is the number of minutes before or after midnight between Saturday 
and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)

=end
