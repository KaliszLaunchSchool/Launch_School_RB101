=begin
What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

Because 'hi' is the last statement evaluated in the block, it is evaluated as truthy, and the orginial
array is returned.

LS Solution
# => [1, 2, 3]
select performs selection based on the truthiness of the block's return value. In this case the return value 
will always be 'hi', which is a "truthy" value. Therefore select will return a new array containing all of 
the elements in the original array.
=end