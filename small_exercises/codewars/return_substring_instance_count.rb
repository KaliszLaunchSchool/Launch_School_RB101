=begin
3.Return substring instance count
(https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby)

Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

Input: 2 strings
Output: Integer

#Algo
- Create a method which takes 2 parameters (full_text, search_text)
- Initialize a variable 'count', set to 0
- Iterate through the string based on the size of the search text
  - Create a loop
    - depending upon the size of the search text, call the substring by index
      - Compare to search string
- If a substring of the original string matches the search string, inrease 'count'
- return count
=end

def solution(full_text, search_text)
  count = 0
  size_of_search = search_text.size - 1 
  start_index = 0
  loop do
    substring_to_compare = full_text[start_index.. size_of_search]
    if substring_to_compare == search_text
      count += 1
    end
    start_index += 1
    size_of_search += 1
    break if size_of_search == (full_text.size - 1)
  end
  count
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
p solution('aa_bb_cc_dd_bb_e', 'bb') == 2
p solution('aaabbbcccc', 'bbb') == 1

