=begin
Write a function with the signature shown below:

def is_int_array(arr)
  true
end
returns true / True if every element in an array is an integer or a float with no decimals.
returns true / True if array is empty.
returns false / False for every other input.

# Problem
- Create a method which accepts an arraay
- Return true if the array is empty
- Return true if every element is an integer or a float without decimals
- Return false otherwise

# Data: array, integers, float

# Algo
- Create a method which accepts 1 parameter
- Return false if the input is not an array
- Return true if the array is empty
- Iterate through the array
  - check to see if each input in integer form == input in float form
   - if it is, return true
- Return false
=end

def is_int_array(input)
  return false if input.class != Array
  return true if input.empty?
  booleans = []
  input.each do |num|
    if num.class == Float
      if num.to_f != num.to_i
        booleans << false
        break
      else
        booleans << true
      end
    elsif num.class == Integer
      booleans << true
    else
      booleans << false
      break
    end
  end
  if booleans.all?(true)
    return true
  else
    return false
  end
end

p is_int_array([]) # true, "Input: []")
p is_int_array([1, 2, 3, 4]) # true, "Input: [1, 2, 3, 4]")
p is_int_array([-11, -12, -13, -14]) # true, "Input: [-11, -12, -13, -14]")
p is_int_array([1.0, 2.0, 3.0]) # true, "Input: [1.0, 2.0, 3.0]")
p is_int_array([1, 2, nil]) # false, "Input: [1,2, nil]")
p is_int_array(nil) # false, "Input: nil")
p is_int_array("") # false, "Input: ''")
p is_int_array([nil]) # false, "Input: [nil]")
p is_int_array([1.0, 2.0, 3.0001]) # false, "Input: [1.0, 2.0, 3.0001]")
p is_int_array(["-1"]) # false, "Input: ['-1']")