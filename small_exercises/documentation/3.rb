# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)


# Use the ruby documentation to determine what this code will print.
# => [4, 5, 3, 6]
# https://ruby-doc.org/core-2.4.0/doc/syntax/calling_methods_rdoc.html
# 4 is assigned to a, 6 is assigned to d, 5 needs a value so it is assigned to b(overrides default), 
# c remains its default value 