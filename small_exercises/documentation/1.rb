=begin
Locate the ruby documentation for methods File::path and File#path. 
How are they different?
File::path
  Returns the string representation of the path

  Example:
  File.path("/dev/null")          #=> "/dev/null"
  File.path(Pathname.new("/tmp")) #=> "/tmp"

File#Path
  Returns the pathname used to create file as a string. Does not normalize the name.

  The pathname may not point to the file corresponding to file. 
  For instance, the pathname becomes void when the file has been moved or deleted.

  This method raises IOError for a file created using File::Constants::TMPFILE 
  because they don't have a pathname.

  File.new("testfile").path               #=> "testfile"
  File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"

LS Solution
Both methods can be found on the documentation page for the File class in the 
Core API section. File::path is a class method, while File#path is an instance 
method.

Discussion
Class methods are called on the class, while instance methods are called on objects. 
Thus:

puts File.path('bin')
calls the class method File::path since we're calling it on the File class, 
while:

f = File.new('my-file.txt')
puts f.path
calls the instance method File#path since we're calling it on an object of the 
File class, namely f.

Pay attention when reading the documentation; make sure you are using a class 
method when you need a class method, and an instance method when you need an 
instance method.
=end