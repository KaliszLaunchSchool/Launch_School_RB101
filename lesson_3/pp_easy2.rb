=begin
Question 1
In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#see if "Spot" is present.
#Bonus: What are two other hash methods that would work just as well for this solution?

p ages.include?('Spot')
p ages.key?('Spot')
p ages.has_key?('Spot')
p ages.member?('Spot')
=end
=begin
Question 2
Starting with this string:

Convert the string in the following ways (code will be executed on original munsters_description above):

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase
#Note: Add ! to mutate the original code
=end
=begin
Question 3
We have most of the Munster family in our age hash.
add ages for Marilyn and Spot to the existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages["Marilyn"] = 22
ages["Spot"] = 237
p ages

#LS solution
ages.merge!(additional_ages)
=end
=begin
Question 4
See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?('Dino')

#LS Solution
advice.match?("Dino")
# Note that this is not a perfect solution, as it would match any substring with Dino in it.
=end
=begin
Question 5
Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
=end
=begin
Question 6
How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino')
p flintstones

#LS solution
flintstones << "Dino"
=end
=begin
Question 7
In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#flintstones << "Dino"
#We could have used either Array#concat or Array#push to add Dino to the family.

#How can we add multiple items to our array? (Dino and Hoppy)
flintstones.push('Dino', 'Hoppy')
p flintstones

#LS Solution
flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
#or
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
=end
=begin
Question 8
Shorten this sentence:
...remove everything starting from "house".
Review the String#slice! documentation, and use that method to make the return 
value "Few things in life are as important as ". But leave the advice variable as 
"house training your pet dinosaur.".

As a bonus, what happens if you use the String#slice method instead?

advice = "Few things in life are as important as house training your pet dinosaur."
#advice.slice!(39..72) #returns "house training ..."
advice.slice!(0..38)
p advice
#if we use string#slice the variable is not modified

#LS solution
advice.slice!(0, advice.index('house'))
=end
=begin
Question 9
Write a one-liner to count the number of lower-case 't' characters 
in the following string:
=end
statement = "The Flintstones Rock!"

p statement.count('t')
=begin
Question 10
Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

Copy Code
title = "Flintstone Family Members"
=end
