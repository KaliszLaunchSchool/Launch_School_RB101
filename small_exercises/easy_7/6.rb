=begin
Staggered Caps (Part 2)
Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether 
it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the 
return value; they just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Problem
- Create a method which takes a string
- alternate which letters are upper vs lowercase
- ignore non-alphabetic chars when determining upper vs lower

# Examples
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Data
- String
- Array

# Algo
- Create a method which takes 1 parameter
- 

# Code
=end

ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    if ALPHABET.include?(char)
      need_upper = !need_upper
    else
      need_upper
    end
  end
  result
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'