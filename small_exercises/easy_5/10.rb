=begin
Bannerizer
Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

# Problem
- Create a method which takes a line of text and prints it in a box

# Example
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

# Data
String
Array?

# Algo

=end

def create_spaces(num, type)
  counter = 0
  spaces = []
  unless num == 0
    loop do 
      spaces << type
      counter += 1
      break if counter == num
    end
  end
  spaces.join
end

def print_in_box(text)
  num = text.size
  spaces = create_spaces(num, ' ')
  hyphen = create_spaces(num, '-')
  puts  "
          +-#{hyphen}-+
          | #{spaces} |
          | #{text} |
          | #{spaces} |
          +-#{hyphen}-+
        "
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')