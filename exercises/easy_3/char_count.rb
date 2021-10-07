puts "Please write word or multiple words:"
input = gets.chomp
char_count = input.delete(" ").size
puts "There are #{char_count} characters in \"#{input}\"."