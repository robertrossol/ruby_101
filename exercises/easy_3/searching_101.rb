ordinals = %w(1st 2nd 3rd 4th 5th)
collection = []
5.times do |index|
  puts "==> Enter the #{ordinals[index]} number:"
  collection << gets.chomp.to_i
end
puts "==> Enter the last number:"
number_to_find = gets.chomp.to_i
if collection.include? number_to_find
  found_text = "appears"
else
  found_text = "does not appear"
end
puts "The number #{number_to_find} #{found_text} in #{collection}"
