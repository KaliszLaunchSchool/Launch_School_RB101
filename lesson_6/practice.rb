# Write a method called joinor that will produce the following result:
=begin
# Problem
- Write a method which takes an array, optional jointer and joiner word
- Add joiner (default = , ) on all except last element
- add joiner word before the last element
- return string

Input : array
Output: string
=end
def joinor(array, joiner = ', ', word = 'or')
  if array.length == 2
    array.join(" #{word} ")
  elsif array.length < 2
    array.join(joiner)
  else
    array.join(joiner).insert(-2, "#{word} ")
  end
end

p joinor([1, 2, 3, 4, 5, 6, 7, 8, 9])

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
p joinor([1])   