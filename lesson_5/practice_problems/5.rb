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