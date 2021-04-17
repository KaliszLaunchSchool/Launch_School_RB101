=begin
How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

If a block is given, it counts the number of elements yielding a true value, so this would return 1
Found in the ruby documentation: https://ruby-doc.org/core-3.0.1/Enumerable.html#method-i-count

LS Solution
If we don't know how count treats the block's return value, then we should consult the docs for Array#count. 
Our answer is in the description:

If a block is given, counts the number of elements for which the block returns a true value.

Based on this information, we can conclude that count only counts an element if the block's return value 
evaluates to true. This means that count considers the truthiness of the block's return value.
=end
