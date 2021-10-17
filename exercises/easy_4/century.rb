
def century(year)
  year/100*100 == year ? century = year/100 : century = year/100 +1
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  suffix = ['th','st', 'nd', 'rd']
  return 'th' if [11, 12, 13].include?(century % 100) || century % 10 == 0 || century % 10 > 3
  return suffix[(century % 10)]
  # if century % 10 == 0 || century % 10 > 3
  #   return suffix[0]
  # else
  #   return suffix[(century % 10)]
  # end
end


p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'