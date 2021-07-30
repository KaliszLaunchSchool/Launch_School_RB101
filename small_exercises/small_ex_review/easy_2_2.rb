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
- Create a program
  - Asks the user for length/width of a room in meters
  - Displays the area of the room 
    -Displays in square meters and square feet

# Data
- String, integer, float

# Algo
- Create a program
- Ask the user for length of a room in meters, store in a length variable
- Ask the user for width of a room in meters, store in a width variable
- Calculate square meters: (length * width)
- Calculate square feet (1 square meter == 10.7639 square feet)
- Output the results
=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
square_meters = length * width
square_feet = square_meters * 10.7639
puts "The area of the room is #{square_meters.round(2)} square meters (#{square_feet.round(2)} square feet)."