# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

def time_of_day(time_offset)
  hours = (time_offset / 60 % 24).to_s
  minutes = (time_offset % 60).to_s
  # [hours, minutes].select do |string| 
  #   string.size == 1
  # end.each do |string| 
  #   string.prepend("0")
  # end
  return format('%02d',hours) + ":" + format('%02d',minutes)
end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_IN_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY


def time_of_day_2(time_offset)
  time_offset += MINUTES_IN_DAY while time_offset < 0

  normalized_minutes = time_offset % MINUTES_IN_DAY
  (hours, minutes) = normalized_minutes.divmod(MINUTES_PER_HOUR)
  return format('%02d:%02d',hours, minutes)
end


puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

puts time_of_day_2(0) == "00:00"
puts time_of_day_2(-3) == "23:57"
puts time_of_day_2(35) == "00:35"
puts time_of_day_2(-1437) == "00:03"
puts time_of_day_2(3000) == "02:00"
puts time_of_day_2(800) == "13:20"
puts time_of_day_2(-4231) == "01:29"