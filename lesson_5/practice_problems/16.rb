=begin
Practice Problem 16
A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the 
same system. That is, without any form of synchronization, two or more separate computer systems can create new items 
and label them with a UUID with no significant chance of stepping on each other's toes.

It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 
3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and 
represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.

# Problem
- Create a method 
- Returns one UUID when called with no parameters
- UUID 
  - 32 random hexadecimal characters
  - broken into 5 sections like this 8-4-4-4-12
  - represented as a string

Input: N/a
Output: String

# Example

UUID()
==> "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Data
string
integers
letters

# Algo
- Create a method taking no arguments
- Returns a string with 32 random characters
  - Each is a random letter or number

=end

def UUID()
  letters = ("a".."z").to_a
  numbers = (0..9).to_a
  characters = (letters + numbers)
  uuid = []

  loop do
    character = characters.sample
    uuid << character
    break if uuid.size == 36
  end

  uuid[8] = "-"
  uuid[13] = "-"
  uuid[18] = "-"
  uuid[23] = "-"
  uuid.join
end

p UUID()

=begin
LS Solution

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

The key to this solution is having the sections array containing integers representing the number of characters in each 
section. During each iteration through the array, within the block we can call the times method on the integer for that 
iteration and thus build up the UUID character by character.

This is just one possible solution to the problem, and yours may be different. However you solved it though, you will 
most likely have needed to use one or more iterative methods.

Our solution ignores some complexity concerning the proper way to generate UUIDs. It has a higher probability of 
creating conflicting values than you might think. See the RFC 4122 document for complete details about how to properly 
generate UUIDs. Better yet, use an RFC 4122-compliant implementation of the algorithm, such as the SecureRandom#uuid 
method in Ruby's standard library.
=end
