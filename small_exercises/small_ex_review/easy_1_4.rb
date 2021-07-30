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

# Problem
- Create a method which accepts 1 parameter (array)
- Counts the number of occurences of each element
- Words are case sensitive

Input: array
Output: hash

# Algo
- Create a method which accepts 1 parameter (array)
- Initiate a results hash
- Iterate through the array
  - For each element, if the hash contains the element as the key, add 1 to the value
  - If the hash does not contain that element as a key, add the element as a key with 1 as the value
- Return the hash


=end

def count_occurrences(elements)
  results = {}
  elements.each do |element|
    if results.include?(element)
      results[element] += 1
    else 
      results[element] = 1
    end
  end
  results.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)