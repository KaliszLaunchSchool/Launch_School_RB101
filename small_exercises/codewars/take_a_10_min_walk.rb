=begin
You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an 
appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating 
App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk 
(eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction and you know it takes you one minute to traverse 
one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you 
don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It 
will never give you an empty array (that's not a walk, that's standing still!).

#Problem
- Create a function that returns true if your walk will take you 10 min AND will return you to your starting destination
- each block takes 1 min to walk

Input: array of strings
Output: Boolean

# Algo
- Create a method which accepts an array of strings
- array must contain 10 elements, else return false
- if 10 elements check to be sure you return to your location via helper method:

  - Initiate a starting location
    - n/s tracker
    - e/w tracker
  - For every north, add 1 to n/s tracker
  - For every sourh, subtract 1 to n/s tracker
  - For every east, add 1 to e/w tracker
  - For every west, subtract 1 to e/w tracker
  - if tracker returns 0, return true, else return false

=end

def is_valid_walk(directions)
  return false unless directions.size == 10
  return_to_start?(directions)
end

def return_to_start?(directions)
  starting_point = 0
  directions.each do |direction|
    if direction == 'n' || direction == 'e'
      starting_point += 1
    elsif direction == 's' || direction == 'w'
      starting_point -= 1
    end
  end

  if starting_point == 0
    return true 
  else
    return false
  end
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
