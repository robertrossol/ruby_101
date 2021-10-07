SQMETERS_TO_SQFEET = 10.7639

puts "Please enter the length of the room in meters"
length = gets.chomp.to_f
puts "Please enter the height of the room in meters"
height = gets.chomp.to_f

area = (length * height).round(2)
area_feet = (area * SQMETERS_TO_SQFEET).round(2)
puts "The area of the room is #{area} square meters (#{area_feet} square feet)."
