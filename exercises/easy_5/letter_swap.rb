# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces


def swap(string)
  words = string.split
  words.each do |word|
    #  x = word[0]
    # word[0] = word[-1]
    # word[-1] = x
    # word
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(" ")
end


puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'