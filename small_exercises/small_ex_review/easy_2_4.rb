=begin
When will I Retire?
Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

# Problem
- Create a program that displays when someone will retire, how many years until retirement

# Algo
- Ask of user's age
- Ask for user's age of retirement
- Subtract the 2 to find years until retirement
- Use 'date' to find the current year
- Add the years until retirement to the date
- Output the current date, year of retirement, and how many years that will be

=end
puts "What is your age?"
current_age = gets.chomp
puts "At what age would you like to retire?"
retirement_age = gets.chomp
years_until_retirement = retirement_age.to_i - current_age.to_i

current_year = Time.now.year

puts "It's #{current_year}. You will retire in #{current_year.to_i + years_until_retirement.to_i}."
puts "You only have #{years_until_retirement} years of work to go!"