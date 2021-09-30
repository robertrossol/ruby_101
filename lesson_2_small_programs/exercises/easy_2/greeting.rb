puts "What is your name?"
name = gets.chomp
if name.chomp("!") != name 
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end