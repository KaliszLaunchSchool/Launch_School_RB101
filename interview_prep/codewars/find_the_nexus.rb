=begin
Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were 
the same number. I cried a little.

Complete the method that takes a hash/object/directory/association list of users, and find the 
nexus: the user whose rank is the closest is equal to his honor. Return the rank of this user. 
For each user, the key is the rank and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there 
are several users who come closest, return the one with the lowest rank (numeric value). The hash 
will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.

Example
         rank    honor
users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,    <--- nexus
          23  =>  11,
          30  =>   2 }

Problem: Given a hash, find the user whose rank is closest to be equal to his honor
Return that rank
- If rank/honor do not match, return the closest
- If several users are closest, return the lowest numeric rank. 
- Rank numbers may not be consecutive

# Example
users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,    <--- nexus
          23  =>  11,
          30  =>   2 }
          Return 20

# Data: Hash, integer

# Algo
- Create a method which accepts 1 parameter
- Find the largest number in the hash, and assign that to a difference hash
- Iterate though the hash
  - Subtract rank from honor and find the absolute value
  - Rank --> abs value replaces the difference hash if it is less than the absolute value 
  already stored
  - If the absolute value is the same, add it to the hash

- If the hash has one value, return that key, otherwise return the lowest key
=end

def nexus(users)
  differences = []
  differences << users.max_by {|k, v| v}
  differences = differences.to_h
  
  users.each do |key, value|
    difference = (key - value).abs
    if difference < differences.values[0]
      differences = {key=>difference}
    elsif difference == differences.values[0]
      differences = differences.merge({key=>difference})
    end
  end
  p differences.min_by {|k,v| k}[0]
end

users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,
          23  =>  11,
          30  =>   2 }
nexus(users) # 20

users = {1 => 3, 3 => 3, 5 => 1}
nexus(users) # 3

users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
nexus(users) # 3