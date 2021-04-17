# we want to select the key-value pairs where the value is 'Fruit'
=begin
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  selected_fruits = {}
  counter = 0

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end
    counter += 1
  end

  selected_fruits
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
=end

=begin
Transformation without mutation
def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
=end
=begin
def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers
=end
=begin
# Create a method that doubles the numbers that have odd indices

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_odd_indices(my_numbers)  # => [1, 8, 3, 14, 2, 12]          
=end
=begin
let's update our double_numbers method to not only be able to double the values in an array, but to multiply 
by any number. For example, let's create a method called multiply that can take an additional argument to 
determine the transformation criteria.

=end
def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    multiplied_numbers << current_number * multiplier

    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]