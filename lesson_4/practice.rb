=begin
loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    break if current_word == words.size
    words[current_word].upcase!
    current_word += 1
  end

  words.join('_')
end

sentence = 'The sky was blue'
p upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'

{a: 1, b: 2, c: 3, d: 4, e: 5}.map do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end
=end
countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

def begins_with_b(string)
  string[0] == 'B'
end

p countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end