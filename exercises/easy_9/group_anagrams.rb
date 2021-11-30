# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:


# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)

def group_anagrams(arr)
  grouped_hsh = {}
  arr.each do |word|
    sorted_letters = word.chars.sort.join
    if grouped_hsh.key?(sorted_letters)
      grouped_hsh[sorted_letters] << word
    else
      grouped_hsh[sorted_letters] = [word]
    end
  end
  grouped_hsh.each_value do |value|
    puts '-----'
    p value
  end
end


p group_anagrams(words)