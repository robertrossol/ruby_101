def average(numbers)
  (numbers.reduce(:+)/numbers.size.to_f).round(2)
  # sum = numbers.reduce { |sum, number| sum + number }
  # sum / numbers.count.to_f
end
puts average([9, 47, 23, 95, 16, 52])
puts average([1, 6]) == 3.5 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25.67
puts average([9, 47, 23, 95, 16, 52]) == 40.33