def multiply(num1, num2)
  num1 * num2
end


puts multiply(5, 3) == 15
# p multiply([1,2,3], 3)

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64

def power_of(num, power)
  total = num
  while power > 1
    total = multiply(total, num)
    power -= 1
  end
  total
end

puts power_of(2, 5) == 32
puts power_of(4, 5) == 1024
