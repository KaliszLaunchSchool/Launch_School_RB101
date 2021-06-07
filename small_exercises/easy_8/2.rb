=begin
Madlibs
Mad libs are a simple game where you create a story template with blanks for words. You, or another player, 
then construct a list of words and place them into the story, creating an often silly or funny story as a 
result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those 
into a story that you create.

Example

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

# Problem
- Create a mad lib program
- Prompts the user for: noun, a verb, an adverb, and an adjective
- Injects the user's inputs into a story
- Do we need to validate words?

Input: string
Output: concatinated string

# Examples

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

# Data
- Strings

# Algo 
- Prompt the user for a word for each type: noun, a verb, an adverb, and an adjective
- Save each word into a variable
- Concatinate into a sentence, which is output by the program

# Code
=end

puts "Please enter a noun"
noun = gets.chomp.downcase
puts "Please enter a verb"
verb = gets.chomp.downcase
puts "Please enter an adjective"
adjective = gets.chomp.downcase
puts "Please enter an adverb"
adverb = gets.chomp.downcase

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"