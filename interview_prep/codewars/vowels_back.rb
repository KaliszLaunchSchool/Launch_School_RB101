=begin
You need to play around with the provided string (s).
Move consonants forward 9 places through the alphabet. If they pass ‘z’, start again at ‘a’. Move vowels back 5 
places through the alphabet. If they pass ‘a’, start again at ‘z’. Provided string will always be lower case, 
won’t be empty and will have no special characters.

# Problem
- Write a method which takes a string
  - If the letters are consonants, move forward 9 places in the alphabet
  - If the letters are vowels, move back 5 places in the alphabet
    - When cycling through the alphabet, if pass a or z, keep cycling
Rules: string will always be lowercase, string will not be empty, no special chars

Input: string
Output: another string
Intermedite: array, hash?

abcdefghijklmnopqrstuvwxy

p vowel_back("testcase") == "czbclvbz"
  - 
p vowel_back("codewars") == "ljmzfvab"
p vowel_back("exampletesthere") == "zgvvyuzczbcqzaz"
p vowel_back("returnofthespacecamel") == "azcpawjocqzbyvlzlvvzu"
p vowel_back("bringonthebootcamp") == "kawpjwcqzkjjclvvy"
p vowel_back("weneedanofficedog") == "fzwzzmvwjoodlzmjp"

# Algo
- Initiate an alphabet constant
- Create a method which accepts 1 parameter (string)
- Initiate a result array
- Split the string into characters
- Iterate through the array of letters
  - Check to see if the letter is a vowel (aeiou)
    - if it is a vowel, replace it with the letter that is 5 places back in the alphabet
      - Check the order of the vowel, subract 5
        - Use this as an index for getting the new letter from an alpha constant
  - If not, replace it with the letter that is 9 places forward
  - Result array contains adjusted letters and nil 
    - 

=end

ALPHA = ('a'..'z').to_a
VOWEL = ['a', 'e', 'i', 'o', 'u']

def vowel_back(string)
  result = []
  string.chars.each do |letter|
    if VOWEL.include?(letter)
      index = letter.ord - 97 - 5
      result << ALPHA[index]
    else
      index = letter.ord - 97 + 9
        if index > 25
          index = index - 26
        end
        result << ALPHA[index]
    end
  end
  result.join
end

p vowel_back("testcase") == "czbclvbz"
p vowel_back("codewars") == "ljmzfvab"
p vowel_back("exampletesthere") == "zgvvyuzczbcqzaz"
p vowel_back("returnofthespacecamel") == "azcpawjocqzbyvlzlvvzu"
p vowel_back("bringonthebootcamp") == "kadwpjwcqzkjjclvvy"
p vowel_back("weneedanofficedog") == "fzwzzmvwjoodlzmjp"
