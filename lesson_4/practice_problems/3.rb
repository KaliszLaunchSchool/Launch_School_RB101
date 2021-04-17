=begin
What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

Reject returns an array for all elements of enum for which the given block returns false.
Puts num returns nil, which is falsy, so this will return [1, 2, 3]

LS Solution
# => [1, 2, 3]
Since puts always returns nil, you might think that no values would be selected and an empty array would be 
returned. The important thing to be aware of here is how reject treats the return value of the block. reject 
returns a new array containing items where the block's return value is "falsey". In other words, if the return 
value was false or nil the element would be selected.
=end