=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

# Problem 
- Create a method which takes a string (URL)
- Parses out the domain name from the URL
- Returns string

Input: string
Output: string

# Algo
- Create a method which accepts 1 parameter (string)
- Check to see if the string includes www. 
  - If it does, return the string between the www. and the next .
  - Else, return the string between the // and the next .
=end

def domain_name(full_name)
  if full_name.match?("www.")
    start_index = full_name.index('.') + 1
    partial_name = full_name[start_index..-1]
    end_index = start_index + partial_name.index('.')
    domain = full_name[start_index...end_index]
  else 
    start_index = full_name.index('//') + 2
    partial_name = full_name[start_index..-1]
    end_index = start_index + partial_name.index('.')
    domain = full_name[start_index...end_index]
  end
  domain
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
p domain_name("http://github.com/carbonfive/raygun") == "github" 
p domain_name("http://www.zombie-bites.com") == "zombie-bites"
p domain_name("https://www.cnet.com") == "cnet"