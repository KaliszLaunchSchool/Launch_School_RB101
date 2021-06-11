=begin
Welcome Stranger
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, 
when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, 
:title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's 
full name, and mentions the person's title and occupation.

Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

# Problem
- Create a method which takes 2 parameteres
- Array: 2+ elements, when joined with spaces, produces a name
- Hash: 2 keys (:title, :occupation)
- Method returns a greeting which uses the person's full name and mentions a title and occupation

Input: Array, Haash
Output: String

# Examples
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

# Data
Array
Hash
String

# Algo
- Create a method which takes 2 parameters (array and hash)
- Name = joined array
- Return a string which outputs name, title, occupation in a greeting

# Code
=end

def greetings(array, hash)
  name = array.join(' ')
  p "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.