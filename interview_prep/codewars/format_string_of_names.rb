=begin
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, 
which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

# Problem
- Given a hash of names, format the names into a string

# Example

# Data: Hash, string, array

# Algo
- Create a method which accepts 1 paraameter
- Case statement for number of objects in the array
  - If 0, return ''
  - if 1, return the value
  - If 2, return values joined with an &
  - if more than 2, return values joined with ', ' except the last 2, joined with &
=end

def list(names)
  case names.count
  when 0
    ''
  when 1
    names[0].values[0]
  when 2
    names[0].values[0] + ' & ' + names[1].values[0]
  else
    size = names.length - 2
    idx = 0
    str = ''
    loop do
      break if idx == size
      str += names[idx].values[0] + ", "
      idx += 1
    end
    str + names[-2].values[0] + " & " + names[-1].values[0]
  end
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) #, 'Bart, Lisa, Maggie, Homer & Marge', "Must work with many names")
p list([{name: 'Bart'},{name: 'Lisa'}]) #, 'Bart & Lisa', "Must work with two names")
p list([{name: 'Bart'}]) #, 'Bart', "Wrong output for a single name")