# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

GRADES = {'A' => (90..100), 'B' => (80..90), 'C' => (70..80), 'D' => (60..70), 'F' => (0..60)}

def get_grade(*scores)
  average = scores.reduce(:+)/scores.size
  GRADES.select do |_grade, range|
    range.include?(average)
  end.first[0]
  # GRADES.each do |grade, range| #this is a little cleaner/quicker
  #   return grade if range.include?(average)
  # end
end


# def get_grade(s1, s2, s3)
#   result = (s1 + s2 + s3)/3

#   case result
#   when 90..100 then 'A' # using a range with `when` essentially calls (range).include?(other_object)
#   when 80..89  then 'B'
#   when 70..79  then 'C'
#   when 60..69  then 'D'
#   else              'F'
#   end
# end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"