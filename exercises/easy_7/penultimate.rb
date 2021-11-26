# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(string)
  string.split[-2]
end

def middle_word(string)
  words = string.split
  return '' if words.empty?
  number_of_words = words.size
  middle_index = (words.size / 2)
  number_of_words.odd? ? words[middle_index] : words[(middle_index-1)..middle_index].join(' ')
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p middle_word('last middle word') == 'middle'
p middle_word('Launch School is great!') == 'School is'
p middle_word('f') == 'f'
p middle_word('') == ''
