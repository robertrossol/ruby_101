def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

def reverse_words(sentence)
  words = sentence.split(" ")
  answer = []
  # p words
  # p words.join(" ")
  words.each do |word|
    word.reverse! if word.size >= 5
    answer << word
  end
  answer = answer.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School is Awesome')         # => hcnuaL loohcS
