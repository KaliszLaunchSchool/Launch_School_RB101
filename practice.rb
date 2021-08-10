=begin
def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'

p s.object_id

p t = fix(s)

p s

p t

p s.object_id

p t.object_id
=end
=begin
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end

p sum
=end
=begin
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr << 12
arr.unshift(0)
p arr

def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

=end

["ab", "c", "aaa", "aaab", "b", "aa"].sort



