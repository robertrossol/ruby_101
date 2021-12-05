# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

#   Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

def block_word?(word)
  pairs = %w(B:O X:K D:Q C:P N:A G:T R:E F:S J:W H:U V:I L:Y Z:M)
  pairs.map! { |pair| pair.split(":") }
  word.upcase.chars.each do |char|
    deleted_pair = pairs.delete(pairs.select { |pair| pair.include?(char) }.first)
    return false if !deleted_pair
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('bxdcngrfjhvlz') == true
