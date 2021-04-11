# Assume you have the following code:

require 'date'

puts Date.civil #=> -4712-01-01
puts Date.civil(2016) # => 2016-01-01
puts Date.civil(2016, 5) # => 2016-05-01
puts Date.civil(2016, 5, 13) # => 2016-05-13

# What will ea
=begin
LS Solution
Discussion
The documentation for the Date class can be found in the Standard library API 
documentation. It's not the easiest documentation to use, but for this particular 
problem, it's easy to look up the civil method.

You can also use the new method instead of civil. However, if you try to read the 
documentation for new, you will probably walk away feeling unenlightened. Instead, 
use the civil method.

The documentation for Date::civil (note that it is a class method) shows that its 
signature is:

civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

This signature uses [] to show that all of the arguments are optional. This is only 
a documentation convention; the brackets should not be included in your program.

Note that the brackets are nested with this method; items inside the outermost bracket 
pairs can only be omitted if all of the innermost bracket pairs are omitted as well. 
Hence, if you omit the month argument, you must omit mday and start, but you must 
supply year. From this signature, then, we can see that arguments to new can be 
supplied in 5 different ways:

Copy Code
Date.civil                             # everything defaults
Date.civil(2016)                       # month, mday, start use defaults
Date.civil(2016, 5)                    # mday, start use defaults
Date.civil(2016, 5, 13)                # start uses default
Date.civil(1751, 5, 13, Date::ENGLAND) # nothing defaults
Starting from the left, year defaults to -4712 (there's a good reason for that 
default) if it is omitted. Likewise, month defaults to 1 (January), mday (the day 
of month) defaults to 1, and start defaults to Date::ITALY. We're not going to 
explain the start parameter right now, but you might need it if you ever need to 
work with Gregorian dates.

With our sample code, the first date printed is -4712-01-01, the second is 
2016-01-01, the third is 2016-05-01, and the last is 1751-05-13.
=end
