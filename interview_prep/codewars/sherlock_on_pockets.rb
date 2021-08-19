=begin
Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which 
has something not allowed in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by hash entries where key is a person and value is one or few things represented by an 
array of numbers (can be nil or empty array if empty), example:

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 
Write method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method 
should return nil.

# Problem
- Write a method which helps to find suspects, the method will accept 2 parameters (a hash and an array)
  - The hash contains a key(people), values(an array of numbers, represents the items they hold)
  - Array parameter = an array of numbers (allowed items)
- Return an array which contains the keys (people's names) who should be suspect
  - they are holding items which are not provided in the array parameter 

Input: a hash(people and the items that they hold), an array (allowed items)
Ouput: an array of symbols (aka keys from the hash)

find_suspects(pockets, [1, 2]) == [:tom, :jane]
  bob = naS
  tom = S (5)
  jane = S (7)
find_suspects(pockets, [1, 7, 5, 2]) == nil
  bob = naS
  tom = naS
  jane = naS
find_suspects(pockets, []) == [:bob, :tom, :jane]
  return all of the names, unless no no one has anything in thir pockets
find_suspects(pockets, [7]) == [:bob, :tom]
  bob = S (1)
  tom = S (2,5)
  jane = naS

# Algorithm
- Create a method which accepts 2 parameters (hash and allowed items array)
- Initialize a suspects list(empty array)
- Iterate through the provided hash
  - Check to see if the value of each key is included in the allowed items array
    - Iterate through the array, and compare to the allowed itams array
  - If an item in the array is NOT in the allowed items array
    - Add that respective key to the suspects list
  - If at the end if iterating through, suspects list is empty, return nil 

=end


pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

def find_suspects(pockets, allowed_items)
  suspects = []
  pockets.each do |names, items|
    items.each do |item|
      if allowed_items.include?(item) == false
        suspects << names
      end
    end
  end
  return nil if suspects.empty?
  suspects.uniq
end

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]