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

arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end

p sum