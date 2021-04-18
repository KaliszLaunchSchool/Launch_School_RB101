=begin
Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  name.slice!(3..) 
end

=begin
LS Solution

flintstones.map! do |name|
  name[0, 3]
end

This could also be done in a single line:

flintstones.map! { |name| name[0,3] }

=end