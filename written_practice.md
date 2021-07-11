```
a = “Hello”
b = a
a = “Goodbye”
puts a
puts b
```

```
a = 4

loop do
  a = 5
  b = 3


  break
end

puts a
puts b
```
```
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```
```
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```
```
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)
```
```
arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```
```
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a
```
```
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
```
```
n = 10

1.times do |n|
  n = 11
end

puts n
```
```
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
```
```
a = "hi there"
b = a
a = "not here"
```
```
a = "hi there"
b = a
a << ", Bob"
```
```
a = [1, 2, 3, 3]
b = a
c = a.uniq
```
```
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
```
```
a = 5.2
b = 7.3

a = b

b += 1.1
```
```
def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
```
```
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)


puts a
puts b
```
```
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y
```
```
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 
```
```
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 
```
```
a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr
```
```
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2
```