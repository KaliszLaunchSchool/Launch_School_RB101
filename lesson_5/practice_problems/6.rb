=begin
Practice Problem 6
One of the most frequently used real-world string properties is that of "string substitution", where we take a 
hard-coded string and modify it with various parameters from our program.

Given this previously seen family hash, print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
...like this:

(Name) is a (age)-year-old (male or female).

# Problem
- Provided a nested hash
- Print name, age, gender of each family member
Input: Hash
Output: String

# Example

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

Herman is a 32-year-old male.

# Data
Hash, string, integer

# Algo
- Given a nested hash
- Iterate through
- Print the appropriate info
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster| 
  name = munster[0]
  age = munster[1]["age"]
  gender = munster[1]["gender"]
  puts "#{name} is a #{age} year old #{gender}."
end