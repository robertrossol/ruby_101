# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.
require 'date'

def friday_13th(year)
  months = (1..12).to_a
  months.select do |month|
    # date_string = "#{year}-#{format('%02d', month) }-13"
    # Date.iso8601(date_string).friday?
    Date.civil(year, month, 13).friday?
  end.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2