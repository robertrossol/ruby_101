# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.


def center_of(str)
  mid_idx = str.size / 2
  str.size.odd? ? str[mid_idx] : str[(mid_idx) - 1..mid_idx] #str[mid_idx - 1, 2]
end


# str[(mid_idx) - 1..mid_idx] = substring from str[mid_idx - 1] to str[mid_idx]
# str[mid_idx - 1, 2] = substring from str[mid_idx - 1], length 2 
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'