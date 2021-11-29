# double_consonants.rbWrite a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

def double_consonants(str)
  consonants = ('a'..'z').to_a - %w(a e i o u)
  #another way to check consonants: char =~ /[A-Za-z]/ && char =~ /[^aeiouAEIOU]/
  str.chars.map do |char|
    if consonants.include?(char.downcase)
      char * 2
    else
      char
    end
  end.join
end

#alternately, could do str.chars.each (or each with object '') and append char once or twice to result string

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""