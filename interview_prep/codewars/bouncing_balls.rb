=begin
A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, 
is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height 
(a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including when it's 
falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly greater than the window 
parameter.

Examples:
- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1 

# Problem: Create a method which counts the number of times a ball bounces in front of a window
     Given: height (must be > 0)
            bounce (must be > 0, < 1)
            window (must be < h)
If all conditions are met, return a positive integer (count)
Else, reurn -1

# Examples
- h = 3, bounce = 0.66, window = 1.5 --> 3
- h = 3, bounce = 1, window = 1.5, result is -1 

# Data: integers

# Algo
- Create a method which accepts 3 parameters
- Initialize variable count = 1
- Validate the parameters
  - Return -1 if conditions are not met
  - Else, return count
- Calculate height of the bounce
  - If <= the window height break
  - Increment count by 2
=end

def bouncing_ball(h, bounce, window)
  return -1 if validate_parameters(h, bounce, window) == false
  count = 1
  loop do
    height_of_bounce = h * bounce
    break if window >= height_of_bounce
    count += 2
    h = height_of_bounce
  end
  count
end

def validate_parameters(h, bounce, window)
  return false if h <= 0 || 0 >= bounce || bounce >= 1 || window >= h
  true
end

p bouncing_ball(3, 0.66, 1.5) # 3)
p bouncing_ball(30, 0.66, 1.5) # 15)
p bouncing_ball(30, 0.75, 1.5) # 21)
p bouncing_ball(30, 0.4, 10) # 3)
p bouncing_ball(40, 1, 10) # -1)
p bouncing_ball(-5, 0.66, 1.5) # -1)