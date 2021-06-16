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
