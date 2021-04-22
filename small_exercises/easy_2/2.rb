=begin
How big is the room?
Build a program that asks a user for the length and width of a room in meters and then displays the area of 
the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

# Problem
- Build a program
- Asks user for length of room(m)
- Asks user for width of room(m)
- Displays area in square meters and square feet
- 1 square meter == 10.7639 square feet

Float division

Input: float
Output: String

# Example
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

# Data
String
Float
Integer

# Algo
- Ask for length of room 
  - Store in variable
- Ask for width of room
  - Store in variable
- Calculate square meters
- Calculate square feet
- Output string with area


# Code
=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = length * width
square_feet = square_meters * 10.7639
p "The area of the room is #{square_meters.round(2)} square meters (#{square_feet.round(2)} square feet)."

