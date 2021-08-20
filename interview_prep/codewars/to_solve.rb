=begin
# Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

# As an example, if the input was “aaee”, the substring (aaee) length would be 4.
# For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

# If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.


p longest_ae("aaee") == 4
p longest_ae("babanctekeaa") == 10
p longest_ae("xenoglossophobia") == -1
p longest_ae("pteromerhanophobia") == 18
p longest_ae("johannisberger") == -1
p longest_ae("secaundogenituareabb") == 16

-----

# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

p minSubLength([2,3,1,2,4,3], 7) == 2

p minSubLength([1, 10, 5, 2, 7], 9) == 1

p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4


=begin
-----------------------INSTRUCTIONS--------------------------------------
Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

As an example, if the input was “aaee”, the substring (aaee) length would be 4.
For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -Find longest substring of given string that has 2 'a' and 'e' characters
  -if givens tring is empty return -1
  -if there are no substrings with 2 'a' and 'e' characters return -1
Implicit Rules:
  -all string characters will be lowercase letters
Questions:

--------------------------EXAMPLES---------------------------------------
"babanctekeaa" ==> 10

babancteke --> contains exactly 2 'a' and 'e' characters and is the longest substring

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 Integer
Additional DS Utilized:
  -splitting string into array
  -joining array into string

----------------------------ALGO-----------------------------------------
High-Level-Algo:

* Find all substrings of the given string
* iterate through substrings and find all substrings with exactlt 2 'a' and 'e' chars
* find and return the longest of these substrings

-- method --> longest_ae(string) --> integer
  -intialize 'subs' to the return value of find_subs
  -select all the substring that contain 2 'a' and 'e' characters (two_ae)
  -find and return the length of the longest element in two_ae
  
-- method --> find_subs(string) --> array
  -initialize an empty array (subs)
  -itertae through 1 upto the length of the givens string (length)
    -split the given string into an array of chars and iterate over (collecting sub_arrays)
      -joing and push sub_arrays to subs
  -return length of longest string or -1

=end

def find_subs(str)
  subs = []
  1.upto(str.size) do |length|
    str.chars.each_cons(length) { |sub_arr| subs << sub_arr.join }
  end
  subs
end

def longest_ae(str)
  subs = find_subs(str)
  two_ae = subs.select { |sub_str| sub_str.count('a') == 2 && sub_str.count('e') == 2 }
  two_ae.empty? ? -1 : two_ae.max_by { |str| str.length }.size
end

# p find_subs("babanctekeaa")

p longest_ae("aaee") == 4
p longest_ae("babanctekeaa") == 10
p longest_ae("xenoglossophobia") == -1
p longest_ae("pteromerhanophobia") == 18
p longest_ae("johannisberger") == -1
p longest_ae("secaundogenituareabb") == 16

=begin
-----------------------INSTRUCTIONS--------------------------------------
# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -find the shortest consecutive sub-array where the sum is >= 's'
  -return 0 if there isn't one
  -array integers are positive
Implicit Rules:
  -'s' will always be a positive whole number
  -given array will not be empty
Questions:
  -contiguous? 
  
--------------------------EXAMPLES---------------------------------------
([2,3,1,2,4,3], 7) == 2

[2, 3, 1, 2] >= 7
[3, 1, 2, 4] >= 7
...
[4, 3] >= 7

return length of shortest array meeting the condition

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Array, 1 Integer
Output: 1 Integer
Additional DS Utilized:
  -creating sub-arrays from the given array

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* find all sub-arrays thats sum is >= 's' and push to them to an array
* find the shortest sub-array and return its length, or 0

-- method --> min_sub_length(array, integer) --> integer
  -initialize subs to the return value of find_sub_arr
  -select all sub-arrays thats sum is >= 's'
  -find the sub-array with the shortest length
  -return the shortest length or 0
  
-- method --> find_sub_arr(array) --> array
  -initialize an empty array (subs)
  -iterate through nums 1 upto length of given array (length)
    -iterate through given array and push all sub-arrays to subs
  -return subs

=end

def find_subs(arr)
  subs = []
  1.upto(arr.size) do |length|
    arr.each_cons(length) { |sub_arr| subs << sub_arr }
  end
  subs
end

def min_sub_length(arr, s)
  subs = find_subs(arr)
  subs_of_s = subs.select { |sub_arr| sub_arr.sum >= s }

  return 0 if subs_of_s.empty?
  subs_of_s.min_by { |sub_arr| sub_arr.size }.size
end

# p find_subs([2,3,1,2,4,3])

p min_sub_length([2,3,1,2,4,3], 7) == 2
p min_sub_length([1, 10, 5, 2, 7], 9) == 1
p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p min_sub_length([1, 2, 4], 8) == 0