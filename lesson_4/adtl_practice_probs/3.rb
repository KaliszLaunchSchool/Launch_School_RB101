=begin
In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
remove people with age 100 and greater.
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |key, value| value >= 100}
p ages

=begin
LS Solution

ages.keep_if { |_, age| age < 100 }

You could also use #select! here. When using similar methods however, it is important to be aware of the 
subtle differences in their implementation. For example, the Ruby Documentation for Hash#select! tells us that 
it is "Equivalent to Hash#keep_if, but returns nil if no changes were made", though in this case that wouldn't 
have made any difference.