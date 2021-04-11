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
=end