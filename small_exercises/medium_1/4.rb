=begin
1000 Lights

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light 
that is initially off. You walk down the row of switches and toggle every one of them. You go back to the 
beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back 
again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until 
you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies 
which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# Problem
- Create a method which takes 1 argument (number of switches)
- Each 'round', turn of or on certain switches
- Round one, all switches
- Round 2, 2..4..6
- round 3: 3..6..9

Input: Integer
Output: Array

# Examples

light_switches(5) == [1, 4]
light_swithces(10) == [1, 4, 9]

# Data 
Integer 
Array 
Hash
Boolean?

# Algo
- Create a method which takes 1 argument (number of switches)
- Create a hash, each switch number is the key, values begin as "off"
- Create a helper "toggle_switch method"
  - if num is passed into it, change the value for that key to 'off' or on
- Iterate through the hash, 
  -for each key matching true for toggle switch method, toggle between 'on' or 'off-
- At the end of the iteration, return all values whose values are "on" 
  - Should be an array of the corresponding keys

# Code
=end


def toggle_switch(nums, switches)
  nums.each do |num|
    if switches.include?(num)
      if switches[num] == 'OFF'
        switches[num] = 'ON'
      else
        switches[num] = 'OFF'
      end
    end
  end
end

def light_switches(num)
  switches = {}
  count = 1
  number_of_switches = (1..num).to_a
  number_of_switches.map do |switch|
    switches[switch] = 'OFF'
  end
  loop do
  switch_to_toggle = []
  number_of_switches.each do |n|
    switch_to_toggle << n * count
  end  
  switch_to_toggle
  toggle_switch(switch_to_toggle, switches)  
  switches
  count += 1
  break if count == num + 1
end
  on_switches = switches.select {|key, value| value == 'ON'}
  on_switches.to_a.flatten!.delete_if {|element| element == "ON"} 
end

p light_switches(5) == [1, 4]
p light_switches(10) == [1, 4, 9]

=begin
LS Solution

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)

Discussion
In this exercise, we use a Hash to represent our lights. A single light is represented as a key-value pair 
within the hash. The key will be the position that light has out of the 1000 lights; the first light is 
position 1, the last is 1000. The value of each light is either "on" or "off" to represent the state of that 
light.

We start by calling toggle_lights with an argument (the number of lights) of 1000.

toggle_lights immediately calls initialize_lights, which creates and returns a Hash that represents all lights 
with a current state of off. toggle_lights subsequently uses the 1.upto(lights.size) method call to iterate 
over the lights as many times as needed (1000 based on our initial value). It uses toggl_every_nth_light to 
toggle first every light, then every other light, then every 3rd light, and so on, until we have iterated over 
all of the lights 1000 times.

Finally, we call on_lights to select the lights that are still on. We use Hash#select, which returns a new Hash 
that contains only the on lights, and then, we chain Hash#keys method which returns an array with only the keys 
of the Hash.

The definition of on_lights uses _position as a parameter name since we don't use the parameter, but want to 
show what it represents. Using an underscore at the beginning of a parameter name is a common convention to 
show that a parameter isn't used.

Note that we don't use the value 1000 internally in most of our methods. Instead, we use lights.size. This lets 
us easily reuse the code for any number of lights.

Our final answer ends up being:

p on_lights(lights)
Output:

[1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 
625, 676, 729, 784, 841, 900, 961]

Further Exploration
There are a few interesting points about this exercise that we can explore:

Do you notice the pattern in our answer? Every light that is on is a perfect square. Why is that?

What are some alternatives for solving this exercise? What if we used an Array to represent our 1000 lights 
instead of a Hash, how would that change our code?

We could have a method that replicates the output from the description of this problem (i.e. "lights 2, 3, 
and 5 are now off; 1 and 4 are on.") How would we go about writing that code?
=end
