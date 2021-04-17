=begin
Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
Turn this array into a hash where the names are the keys and the values are the positions in the array.

Problem
- given an array
- Convert into a hash with name is key, value is index

Example
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
=> {"Fred" => 1, "Barney" =>2, "Wilma" =>3}

Input: array
Output: Hash

Data
Array, hash

Algorithm
- Initiate hash
- use each_with_index to iterate through array
Code
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |name, index| 
  flintstones_hash[name] = index
end

p flintstones_hash