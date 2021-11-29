# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(str)
  str.chars.map { |char| char * 2 }.join
  # str.chars.zip(str.chars).join
  # str.chars.each_with_object('') { |char, string| string << char * 2 }
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''