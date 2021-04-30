=begin
Practice Problem 5

Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
figure out the total age of just the male members of the family.

# Problem
- Given a nested hash
- Select only may members of the family
- Sum their ages
Input: Hash 
Output: Integer

# Example

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
==> 444

# Data
- Hash, array, string, integer

# Algo
- Given a hash of hashes
- Iterate though main hash
  - Select only males
- Given the Hash of males
  - Select each age and add to an array
  - Sum the array of ages
- Return sum of ages
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_ages = []
munsters.each_value do |value|
  if value["gender"] == "male"
    male_ages << value["age"]
  end
end

p male_ages.sum

=begin

total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

total_male_age # => 444

In this example, within each key-value pair in the outer hash the value is itself a hash. When iterating 
through the outer hash, we need to access two values from each inner hash.

Since we're not referencing the key (each family member's name) from the key-value pairs in the outer hash, we 
can use Hash#each_value with a single block parameter.
=end
