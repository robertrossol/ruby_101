
# def ascii_value(string)
#   count = 0
#   sum = 0
#   loop do
#     sum += string[count].ord
#     count += 1
#     break if count == string.size
#   end
#   sum
# end

def ascii_value(string)
  return 0 if string.empty?
  string.split('').map {|char| char.ord }.reduce(:+)
end

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0