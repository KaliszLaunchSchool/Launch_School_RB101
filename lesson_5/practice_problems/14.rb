=begin
Practice Problem 14
Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the 
vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
The return value should look like this:

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Problem
- Given a hash
- Return an array containing colors of fruit AND size of veggies
- If size, uppercase
- if color, capitalzie

Input: Hash
Output: array

# Examples
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

==> [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Data 
Hash
Arraay
Strings

# Algo
- Initiate an array 
- Iterate through the hash
  - If type is 'vegetable'
    - Slect size, push to array, and uppercase
  - If type is 'fruit'
    - Slect colors, push to array, and capitalize

# Code
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

array = []

hsh.each do |produce|
  type = produce[1][:type]
  if type == "vegetable"
    array << produce[1][:size].upcase
  else
    array << produce[1][:colors].map {|color| color.capitalize}
  end
end

p array