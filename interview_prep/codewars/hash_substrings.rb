=begin
Given a certain string, create a hash with each character in string as key andall possible substrings in string starting at each character as value.

# Problem
- Given a sting, create a hash 
  - each character in the string is the key
  - Every possible substring starting with that char is the value
  
Input: string of letters
Output: a hash

# Algorithm
- Create a method which finds all consecutive substrings of a string
  - An array of substrings

- Main method
  - Initiate a results hash
  - Iterate through the array of substrings
    - Check to see what the beginning letter of the substring is
      - If the hash contains that letter as a key
        - Append the substring as a value
      -Otherwise (the lettter is not yet a key)
        - creaate a key with the value as the substring
=end

def consecutive_runs(string)
  substrings = find_consecutive_subs(string)
  
  hash = {}
  substrings.each do |substring|
    first_letter = substring[0]
    if hash.include?(first_letter)
      hash[first_letter] << substring
    else
      hash[first_letter] = [substring]
    end
  end
end

  def find_consecutive_subs(string)
    results = []
    1.upto(string.size) do |length|
      string.chars.each_cons(length) { |sub| results << sub.join}
    end
    results
  end
  
  p consecutive_runs('abcd') == {"a"=>["a", "ab", "abc", "abcd"],
                                 "b"=>["b", "bc", "bcd"],
                                 "c"=>["c", "cd"],
                                 "d"=>["d"]}