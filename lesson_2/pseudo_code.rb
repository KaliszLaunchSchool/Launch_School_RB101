=begin
Instructions: Determine which number is greatest in a collection

PSEUDO CODE
Given a collection of integers.

Iterate through the collection one by one.
  - Save the first value as the starting value
  - for each iteration, compate the saved value with the current value
  - If the saved value is greater, or it's theh same
    - Move to the next value in the collection
  - Otherwise, if the current value is greater
    - Reassign the saved value aas the current value
    
After iterating through the collection, return the saved value

FORMAL PSEUDO CODE

START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value withhin numbers collection at space 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE 
    saved_number = current_number
    
  iterator = iterator + 1
  
PRINT saved_number
  
END
=end
  
def find_greatest(numbers)
  saved_number = nil
  
  numbers.each do |num|
    saved_number ||= num #assign to first value
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end
  
  saved_number
end

=begin
Write out pseudo-code (both casual and formal) that does the following:

1) a method that returns the sum of two integers

PSEUDO CODE
Given 2 integers.

- Assign each integer to a variable
- Add the 2 variables together
- Set the equation to a result variable
- Print the result

FORMAL PSEUDO CODE

START
#Given 2 integers

SET num1 = first integer
SET num2 = second integer

IF num1 && num2 truthy
  SET result = num1 + num 2
  
PRINT result
END

2) a method that takes an array of strings, and returns a string that is all those strings concatenated together

PSEUDO CODE
Given an array of strings

- Find the length of the array
- Iterate through the array one by one:
  - If length of the array > 0
    - Shift each string off the array
    - Concatenate each string to the end of the concatenation
- Return concatenated string

FORMAL PSEUDO CODE
START
# Given an array of strings

READ array.length
SET current_string = array.shift #Takes first string in array, array decreases by 1
WHILE array.length > 0
   SET concat_string = current_string(array.length) + 
ELSE 
  RETURN

PRINT concat_string(array.length) 


  
END

3) a method that takes an array of integers, and returns a new array with every other element

PSEUDO CODE
Given an array of inegers

- Iterate over each integer
- Start from zero index
- Select zero index + 2 
- End after iterate over each

FORMAL PSEUDO CODE
START
#Given an array of integers

SET i=0
SET new array = array.each
                  index[i].select
                  i + 2

PRINT new_array 
END
=end