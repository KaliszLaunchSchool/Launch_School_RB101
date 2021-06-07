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

=begin
LS Solution

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample

Discussion
Using string interpolation here instead of concatenation makes it more readable and is generally considered 
more rubyish (especially given that it is a sentence).

The different madlib sentences are written within our Ruby file. Another option here, one that is a bit more 
complicated, would be to read in a text file. Then, we could use String#format to interpolate our noun, verb, 
adjective, and adverb into this file.
=end