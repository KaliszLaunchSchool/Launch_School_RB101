=begin
Lettercase Counter
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number 
of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, 
and one the number of characters that are neither.

Examples

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Problem
- Create a method which takes 1 parameter
- Return a string containing 3 things about the array
  - Number of chars that are lowercase
  - Number of chars that are uppercase
  - Number of chars that are neither
- Spaces count

Input: String
Output: Hash

# Examples
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Data
- String
- Array
- Hash
- Integers
- Range

# Algo
- Create a method which takes 1 parameter (string)
- Initiate a hash  
  - lowercase, uppercase, neither keys
  - values 0
- Initiate a range of the lowercase alphabet and uppercase alphabets
- Split the string into array of chars
- Iterate through the array of the string characters
  - If lowercase range contains the char, increment the value lowercase
  - If uppercase range contains the char, increment the value uppercase
  - Else, increment neither

# Code
=end

def letter_case_count(string)
  letter_counts = { lowercase: 0, uppercase: 0, neither: 0 }
  lowercase_alphabet = ('a'..'z').to_a
  uppercase_alphabet = ('A'..'Z').to_a

  string.chars.each do |element|
    if lowercase_alphabet.include?(element)
      letter_counts[:lowercase] += 1
    elsif uppercase_alphabet.include?(element)
      letter_counts[:uppercase] += 1
    else
      letter_counts[:neither] += 1
    end
  end
  letter_counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
