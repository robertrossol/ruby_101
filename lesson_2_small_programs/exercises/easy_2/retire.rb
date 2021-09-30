puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

remaining_years = retirement_age - age
current_year = Time.now.year
puts current_year
puts "It's #{current_year}. You will retire in #{current_year + remaining_years}."
puts "You have only #{remaining_years} years of work to go!"
