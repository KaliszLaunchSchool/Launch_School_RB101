=begin
You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or 
other items. We want to create the text that should be displayed next to such an item.

Implement the function likes which takes an array containing the names of people that like an item. It must return 
the display text as shown in the examples:

likes [] -- must be "no one likes this"
likes ["Peter"] -- must be "Peter likes this"
likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"
For 4 or more names, the number  and 2 others simply increases.

# Problem
- Create a method which accepts 1 parameter (an array of names)
- Depending upon the size of the array, output 'display text'

Input: array
Output: String "text"

likes([]) == 'no one likes this'
  - array empty --> 'no one likes this'
likes(['Peter']) == 'Peter likes this'
  - array size == 1 --> 'array[0] likes this'
likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
  - array size == 2 --> 'array[0] and array[1] like this
likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
  - array size == 3 --> 'array[0], array[1], and array[2] like this'
likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'
  - array size > 3 == 'array[0], array[1] and array.size - 2 others like this'

# Algorithm
  - Create a method which accepts 1 parameter (an array of names)
  - Create a case based off of the size of that array
    - Output different text via string interpolation depending upon the case
=end

def likes(array)
  size = array.size
  case size 
  when 0
    "no one likes this"
  when 1
    "#{array[0]} likes this"
  when 2
    "#{array[0]} and #{array[1]} like this"
  when 3
    "#{array[0]}, #{array[1]} and #{array[2]} like this"
  else
    "#{array[0]}, #{array[1]} and #{size - 2} others like this"
  end
end

p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'