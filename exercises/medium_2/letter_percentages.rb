def letter_percentages(str)
  results = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  results[:lowercase] = (str.count(('a-z')).to_f/str.size)*100
  results[:uppercase] = (str.count(('A-Z')).to_f/str.size)*100
  results[:neither] = 100.0 - results[:lowercase] - results[:uppercase]
  # counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  # counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  # counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  results
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')