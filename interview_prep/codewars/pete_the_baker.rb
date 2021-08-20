=begin
Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

Examples:

// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
// must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}); 

# Problem
- Create a method ehich takes a reccpie followed by the available ingredients
  - Returns how many cakes can be made (integer)

Input: 2 hashes
Output: Integer
Intermediate: array

# Algorithm
- Create a method which accepts 2 parameters(hashes: recipe, available_ingred)
  - Iterate through recipe and check to see if available ingredients includes each item
    - If an item is not included
      - Return 0
    - If each item is included
      - Initialize a result array
      - Iterate through recipe values
        - divide the ingredient value / recipe value
          - if any return 0, return 0 for the method
          -otherwise, send the division to the result array
            - return the smallest number

# Check to see if all ingredients are availalbe

# Calculate recipe amounts to ingredient amount how many cakes I can make

  - take amounts from a and divide b


=end


def cakes(recipe, available_ingreds)
  result = []
  recipe.each do |ingredient, amount|
    return 0 if available_ingreds.include?(ingredient) == false
    result << available_ingreds[ingredient] / amount
  end
  p result.sort.first
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p  cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
 p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
 p cakes({"eggs"=>4, "flour"=>400},{}) == 0
 p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1