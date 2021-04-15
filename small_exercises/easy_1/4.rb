=begin
Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element 
alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2

## Problem ##
- Create a method
- Given an array of elements
- Count the number of elements in an array
- Print each element along side the number of occurences
- Case matters 'suv' != 'SUV'

Input: Array
Output: Hash

## Example ##
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

Expected output:
car => 4
truck => 3
SUV => 1
motorcycle => 2

## Data ##
Array
Strings(or other elements?) within the array
Integer
Hash

# Algorithm ##
- Given an array of elements with some elements repeated
- Initiate a hash to push values
- Interate through the array
- Array[0] becomes hash key[0] with value of 1
- Continue to iterate through the array, 
  - Compare array values with hash keys
    - If they are the same, the hash key that matches increases its value by 1
    - If they are different, create a new hash key with value 1
- Loop breaks when array is empty
- Print hash/value pairs

## Code ##
=end
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  hash = {}
  loop do
    element = array.shift.to_s
    next if hash.include?(element)
    number = array.count(element)
    hash[element] = number + 1
    break if array.empty?
  end
  hash.delete("")
  puts hash.each { |key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)

=begin
LS Solution

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

Discussion
As we iterate over each unique element, we create a new key-value pair in occurrences, with the key as the 
element's value. To count each occurrence, we use Array#count to count the number of elements with the same 
value.

Lastly, to print the desired output, we call #each on the newly created occurrences, which lets us pass the 
keys and values as block parameters. Then, inside of the block, we invoke #puts to print each key-value pair.

Further Exploration
Try to solve the problem when words are case insensitive, e.g. "suv" == "SUV"

#  (case insensitive - when every element in the array is a string)
def count_occurrences(array)
  occurrences = {}
  array.uniq.each do |word|
    word = word.downcase
    occurrences[word] = array.count { |ele| ele.casecmp?(word) }
  end
  occurrences.each { |word, count| puts "#{word} => #{count}" }
end

vehicles = [
  'caR', 'car', 'tRuCk', 'CaR', 'SUV', 'TRUCK',
  'MOTORcycle', 'motorcycle', 'CAR', 'truck'
]

count_occurrences(vehicles)

=end