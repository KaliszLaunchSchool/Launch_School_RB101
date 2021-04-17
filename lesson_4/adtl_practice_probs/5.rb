=begin
In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
Find the index of the first name that starts with "Be"
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

name = flintstones.bsearch { |name| name.start_with?('Be') }
index = flintstones.index(name)
p index

=begin
LS solution

flintstones.index { |name| name[0, 2] == "Be" }
=end