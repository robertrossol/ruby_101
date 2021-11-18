# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# -check if characters are letters
#   -if yes, move on
#   -if no, replace with space once, and then just delete until we get to a letter



def cleanup(string)
  x =string.chars.map do |char| 
    unless char.match?(/[A-Za-z]/)
      char = " "
    end
    char
  end.join
  x.gsub(/ +/, " ") #or x.squeeze(" ") 'with no arguments, all duplicates are squeezed'
end

#OR

ALPHABET = ('a'..'z').to_a

def cleanup_2(text)
  cleaned_chars = []
  text.chars.each do |char|
    if ALPHABET.include?(char)
      cleaned_chars << char 
    else
      cleaned_chars << " " unless cleaned_chars.last == " "
    end
  end
  cleaned_chars.join

end

#OR

def cleanup_3(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup_2("---what's my +*& line?") == ' what s my line '
p cleanup_3("---what's my +*& line?") == ' what s my line '

