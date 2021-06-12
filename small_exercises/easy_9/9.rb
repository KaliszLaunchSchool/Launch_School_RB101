=begin
Grade book
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter 
value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 
100.

Example:

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

# Problem
- Write a method which determines the avg of 3 scores passed to it
- Returns the letter associated with that grade

Input: 3 integers
Output: string

# Examples

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

# Data 
- Integers
- Array?
- String

# Algo
- Create a method which takes 3 integers
- Add the integers, and divide by 3 for the average grade
- Compare the average grade with the grade constants
- Return the corresponding string 

#Code
=end

def determine_letter_grade(score)
  case score
  when 90..100	
    'A'
  when 80..90	
    'B'
  when 70..80	
    'C'
  when 60..70	
    'D'
  when 0..60	
    'F'
  end
end

def get_grade(grade_1, grade_2, grade_3)
  average_grade = (grade_1 + grade_2 + grade_3) / 3
  determine_letter_grade(average_grade)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"