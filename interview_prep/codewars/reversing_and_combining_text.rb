=begin
665. Reversing and Combining Text
(https://www.codewars.com/kata/56b861671d36bb0aa8000819/train/ruby)

Your task is to Reverse and Combine Words.

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
  (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result…

# Problem
- Create a method which accepts 1 parameter (string)
  - the string will be 'words' (a set of chars separated by spaces)
- Take each word, reverse then combine it with the next word in the 'sentence'
  - Continue combining until only 1 word is left
  - 

# Examples
"abc def" == "cbafed"
"abc def ghi jkl" == "defabcjklghi"
cbafed ihglkj
defabcjklghi

Input: string
Output: string
Intermediate: array

# Algo
- Create a method which accepts 1 parameter(string)
- Split the string into an array of words (separate at the spaces)
 - Check the size of the array
    - If 1, return the array
    - If > 1
      - reverse each word
      - combine the strings
- Continue until no spaces

=end

def reverse_words(array)
  array.map { |word| word.reverse }
end

def combine_words(array)
  results = []
  index = 0
  loop do
    if array.size.even?
      results << array[index] + array[index + 1]
      index += 2
      break if index > array.size - 1
    else
      if index < (array.size - 1)
        results << array[index] + array[index + 1]
        index += 2
      else
        results << array[-1]
        break
      end
    end
  end
  results
end

def reverse_and_combine_text(string)
  array = string.split
  return string if array.size == 1
  reversed = reverse_words(array)
  combined = combine_words(reversed)
  loop do
    return combined.join if combined.size == 1
    array = combined
    reversed = reverse_words(array)
    combined = combine_words(reversed)
    end
  end
end

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"



# def practice(array)
#   results = []
#   index = 0   
#   loop do
#     p index
#     results << array[index, 2]
#     break if index >= array.size - 1
#     index +=  2
#   end
#   p results.map {|subarray| subarray.join}
# end

# practice("abc def ghi jkl".split) 
# practice("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44".split)

# def reverse_words(array)
#   array.map { |word| word.reverse }
# end

# def combine_words(array)
#   results = []
#   index = 0   
#   loop do
#     results << array[index, 2]
#     break if index >= array.size - 1
#     index +=  2
#   end
#   p results.map {|subarray| subarray.join}
# end

# def reverse_and_combine_text(string)
#   array = string.split
#   if array.size == 1
#     return string
#   else
#     reversed = reverse_words(array)
#     combined = combine_words(reversed)
#     loop do
#       if combined.size == 1
#         return combined.join
#         break
#       else 
#         array = combined
#         reversed = reverse_words(array)
#         combined = combine_words(reversed)
#       end
#     end
#   end
# end

# p reverse_and_combine_text("abc def") == "cbafed"
# p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
# p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
# p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
# p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

# Monte's solutsion

def reverse_strings(arr)
  0.upto(arr.size - 1) do |idx|
    arr[idx] = arr[idx].reverse
  end
  arr
end

def combine_elements(arr)
  result = []
  iteration_count = arr.size / 2
  iteration_count.times do
    result << arr.slice!(0, 2).join
  end
  result + arr
end

def reverse_and_combine_text(str)
  string_array = str.split
  loop do
    return string_array.join if string_array.size == 1
    reversed = reverse_strings(string_array)
    string_array = combine_elements(reversed)
  end
end

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"
