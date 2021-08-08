=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and 
count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

# Problem
- Given aa string, count each lowercase letter in the string
- Store the count in a hash with letter as key, count as value
- Key must be a symbol, not a string!
- Hash is in alphabetical order

Input: String
Output: Hash 

# Algo
- Create a method which accepts 1 parameter (string)
- Initiate an empty hash
- Split the string into characters
  - Iterate through the characters array
  - For each character, check to see if the character is in the hash
    - If it is in the hash, increase the value number by one
    - If it is not in the hash, add that character to the hash with the value of 1 (as a symbol)
- Return the hash
Example:

letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
letter_count('codewars') #=>{:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
letter_count('activity') #=> {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})

=end

def letter_count(string)
  letter_tracker = {}
  string.chars.each do |char|
    key = char.to_sym
    if letter_tracker.include?(key)
      letter_tracker[key] += 1
    else 
      letter_tracker[key] = 1
    end
  end
  p letter_tracker.sort.to_h
end

letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
letter_count('codewars') #=>{:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
letter_count('activity') #=> {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})