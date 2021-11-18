# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes_1(word_string)
  word_lengths_hash = Hash.new(0)
  word_lengths = word_string.split.map {|word| word.length}
  word_lengths.each do |length|
    word_lengths_hash[length] += 1
  end
  #OR
  # words = word_string.split
  # words.each do |word|
  #   word_lengths_hash[word.size] += 1
  # end
  word_lengths_hash
end

p word_sizes_1('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes_1('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes_1("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes_1('') == {}

ALPHABET = ('a'..'z').to_a

def word_sizes(word_string)
  word_lengths_hash = Hash.new(0)
  words = word_string.split
  words.each do |word|
    word.delete!('^A-Za-z')
    word_lengths_hash[word.size] += 1
    # length = word.chars.select {|char| char.match?(/[A-Za-z]/)}.size
    # word_lengths_hash[length] += 1
  end
  word_lengths_hash
end


# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}