# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.
require 'pry'


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_IN_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  ((hours * MINUTES_PER_HOUR) + minutes) % MINUTES_IN_DAY
  # minutes == MINUTES_IN_DAY ? 0 : minutes
end

def before_midnight(time)
  (MINUTES_IN_DAY - after_midnight(time)) % MINUTES_IN_DAY
  # minutes == MINUTES_IN_DAY ? 0 : minutes
end


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0