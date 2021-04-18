=begin
Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  name.slice!(3..) 
end