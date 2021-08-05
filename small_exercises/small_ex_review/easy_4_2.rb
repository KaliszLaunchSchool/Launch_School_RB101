=begin
What Century is That?
Write a method that takes a year as input and returns the century. The return value should be a string that 
begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# Problem
- Create a method that accepts a year as an input, returns the century
- Make sure the century ends in the correct ending (st, nd, rd, or th)
Rule: New centuries begin in years which end in 01

Input: Integer
Output: String

# Algo
- Create a method which accepts 1 argument (integer)
- Determine the century
  - 1st century: 1 - 100; 2nd 101-200; 3rd 201 - 300... 20th: 1901-2000
  - If integer < 101, 1st century
  - Elsif integer's last 2 digits are '00', remove the 00 (divide by 100) and that's the century
  - Else remove the last 2 digits, add 1, and that's the century number
- Determine the ending
  - ends in 11..19
    - th
  - Ends in 1
    - st
  - 2
    - nd
  - 3
    -rd
  - else
    - th

=end

def century(year)
  if year < 101
    century = '1'
  elsif year.to_s[-2..-1] == '00'
    century = (year/100).to_s
  else
    century = ((year/100) + 1).to_s
  end

  if ('11'..'19').include?(century[-2..-1])
    century << 'th'
  elsif century[-1] == '1'
    century << 'st'
  elsif century[-1] == '2'
    century << 'nd'
  elsif century[-1] == '3'
    century << 'rd'
  else
    century << 'th'
  end
  century
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'