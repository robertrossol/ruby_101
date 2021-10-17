
# def running_total(array)
#   results = []
#   total = 0
#   array.each do |num|
#     total += num
#     results << total
#   end
#   results
# end

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

def running_total(array)
  array.each_with_object([]) { |num, a| a << num + (a[-1] || 0)}
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []