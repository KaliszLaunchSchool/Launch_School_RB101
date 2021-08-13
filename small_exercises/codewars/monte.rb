=begin
A string is considered to be in "title case" if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

# Problem
- Creating a method which takes 2 parameters  (strings), and returns that same string in "title case"
  - Title case = each word is capitialized, unless it is considered an exception
  - The first word is ALWAYS capitalized
  - Exceptions are provided as a 2nd parameter, and should be case insensitive
  
Input: 2 strings
Output: 1 String

  
# Algorithm
- Create a method which accepts 2 strings as parameters
- Create an exception list array
  - downcase all words in the array
- Iterate through the first string, and capitalize each word
  - Unless, the word matches a word in the "exception list", in which case, the word should be downcased
  - For the first word in the string, capitalize it 
- If there is no exception list, we capitalize every word in the string

Examples:
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings' 
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows' 
p title_case('the quick brown fox') == 'The Quick Brown Fox'
=end

def title_case(title, exceptions='')
  if exceptions == ''
    
    title = title.split.map do |word|
        word.capitalize
    end
    
  else 
    exceptions = exceptions.downcase.split

    title = title.split.map do |word|
      word.downcase!
      if exceptions.include?(word)
        word
      else
        word.capitalize
      end
    end
    
  end

  title[0] = title[0].capitalize
  title.join(' ')
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings' 
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows' 
p title_case('the quick brown fox') == 'The Quick Brown Fox'