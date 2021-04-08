=begin 
Question 1
What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#Should print [1, 2, 2, 3] (uniq! would be different)

numbers.uniq returned a new Array object with unique elements, but it did not
modify the numbers object. Further, the puts method automatically calls to_s 
on its argument, and that’s why you see the output like above.

Additional note: had the last line been p numbers instead, the output would have 
been [1, 2, 2, 3] because the p method automatically calls inspect on its argument, 
which gives a different formatting on the output. Furthermore, we could have also 
done puts numbers.inspect and the output would have been the same as using the p 
method.
=end

=begin
Question 2
Describe the difference between ! and ? in Ruby. And explain what would happen 
in the following scenarios:
# ! is the bang operator, and can help to modify code to mutate. ? is a comparison, 
# returns a boolean, T or F

1. what is != and where should you use it? #Use as a comparison: does NOT equal
2. put ! before something, like !user_name #changes the variable name
3. put ! after something, like words.uniq! #makes uniq method mutate the code
4. put ? before something #Changes variable name
5. put ? after something #comparison, method returns T or F
6. put !! before something, like !!user_name #

Solution:
Just to clarify, if you see ! or ? at the end of the method, it's actually 
part of the method name, and not Ruby syntax. Therefore, you really don't 
know what the method is doing, even if it ends in those characters -- it 
depends on the method implementation. The other uses are actual Ruby syntax:

!= means "not equals"
? : is the ternary operator for if...else
!!<some object> is used to turn any object into their boolean equivalent.
!<some object> is used to turn any object into the opposite of their boolean 
equivalent, just like the above, but opposite.
=end

=begin
Question 3
Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
p advice
=end

=begin
Question 4
The Ruby Array class has several methods for removing items from the array. 
Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
#What do the following method calls do (assume we reset numbers to the original 
#array between method calls)?

#p numbers.delete_at(1) #Deletes and returns the value at the first index
#p numbers.delete(1) #Deletes and returns the number 1 in the index

Another thing to notice is that while both of these methods operate on the contents 
of the referenced array and modify it in place (rather than just returning a modified 
version of the array) these methods do NOT have the usual ! at the end of the method 
name for "modify in place" method names.
=end

=begin
Question 5
Programmatically determine if 42 lies between 10 and 100.

hint: Use Ruby's range object in your solution.

(10..100).include?(42)

LS solution: (10..100).cover?(42)
=end 

=begin
Question 6
Starting with the string:

famous_words = "seven years ago..."
show two different ways to put the expected "Four score and " in front of it.

OPTION 1
famous_words = "seven years ago..."
add = "Four score and " 
p add << famous_words

OPTION 2
famous_words = "seven years ago..."
p "Four score and #{famous_words}"  

LS SOLUTIONS
"Four score and " + famous_words
or

famous_words.prepend("Four score and ")
or

"Four score and " << famous_words
=end
=begin
Question 7
If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
#We will end up with this "nested" array:

#["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
#Make this into an un-nested array.
flintstones.flatten!
=end
=begin
Question 8
Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
#Turn this into an array containing only two elements: Barney's name and Barney's number
 flintstones.assoc("Barney")
 =end