=begin
How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

Returns first n elements from enum.
=> [1, 2]
Not distructive, from ruby docs & running the example, arr is not changed

LS Solution
If you're unsure of how a method works the best thing to do is to read its documentation. Along with that, 
testing the method in irb can be very helpful. In this case we can quickly check if take is destructive or 
not by running the code in irb.

irb :001 > arr = [1, 2, 3, 4, 5]
irb :002 > arr.take(2)
=> [1, 2]
irb :003 > arr
=> [1, 2, 3, 4, 5]

By reading the docs and testing the method in irb, we're able to determine that Array#take selects a specified 
number of elements from an array. We're also able to verify that it isn't a destructive method.

