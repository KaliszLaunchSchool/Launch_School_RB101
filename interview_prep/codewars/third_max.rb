=begin
# Given integer array nums, return the third maximum number in this array. If the third maximum does not exist, return the maximum number.
# You are not allowed to sort the array


p third_max([3,2,1]) == 1
p third_max([1,2]) == 2
p third_max([2,2,3,1]) == 1
p third_max([1, 3, 4, 2, 2, 5, 6]) == 4

=end


def third_max(arr)
  arr = arr.uniq
  result = 0
  if arr.size < 3
    return arr.max
  end
  3.times do
    result = arr.delete(arr.max)
  end
  result
end


def third_max(array)
  return array.max if array.uniq.size < 3
  array = array.uniq
  2.times do 
    num = array.max
    array.delete(num)
  end
  array.max
end

p third_max([3,2,1]) == 1
p third_max([1,2]) == 2
p third_max([2,2,3,1]) == 1
p third_max([1, 3, 4, 2, 2, 5, 6]) == 4